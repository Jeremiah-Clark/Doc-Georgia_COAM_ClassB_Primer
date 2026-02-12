-- gfm-to-latex.lua
-- Bridges GitHub-Flavored Markdown features to LaTeX for PDF generation.
--
-- Handles:
--   1. GFM admonitions (> [!WARNING], > [!TIP], etc.) → LaTeX mdframed environments
--   2. Full-width images
--   3. Page breaks before level-1 headings

-- ---------------------------------------------------------------------------
-- 1. GFM Admonitions → LaTeX callout environments
-- ---------------------------------------------------------------------------
-- Supported types (case-insensitive matching, mapped to lowercase env names):

local admonition_map = {
  WARNING   = "warning",
  NOTE      = "note",
  TIP       = "tip",
  IMPORTANT = "important",
  CAUTION   = "caution",
  SUMMARY   = "summary",
  EXAMPLE   = "example",
}

function BlockQuote(el)
  if #el.content == 0 then return el end

  local first_block = el.content[1]
  if first_block.t ~= "Para" then return el end

  -- Stringify the first paragraph and look for [!TYPE]
  local first_text = pandoc.utils.stringify(first_block)
  local admonition_type = first_text:match("^%[!(%u+)%]")

  if not admonition_type then return el end

  local env_name = admonition_map[admonition_type]
  if not env_name then return el end

  -- Build new content, stripping the marker
  local new_content = pandoc.List()

  -- Determine if the marker is alone on its paragraph or has trailing content
  local marker_only = first_text:match("^%[!%u+%]%s*$")

  if not marker_only then
    -- Content follows the marker on the same line — strip the marker from inlines
    local stripped = strip_marker_inlines(first_block.content, admonition_type)
    if #stripped > 0 then
      new_content:insert(pandoc.Para(stripped))
    end
  end

  -- Append all subsequent blocks from the blockquote
  for i = 2, #el.content do
    new_content:insert(el.content[i])
  end

  -- Wrap in LaTeX environment
  local result = pandoc.List()
  result:insert(pandoc.RawBlock("latex", "\\begin{" .. env_name .. "}"))
  result:extend(new_content)
  result:insert(pandoc.RawBlock("latex", "\\end{" .. env_name .. "}"))

  return result
end

-- Helper: remove the [!TYPE] marker from the start of an Inlines list
-- while preserving all subsequent formatting (bold, links, etc.)
function strip_marker_inlines(inlines, marker_type)
  local new = pandoc.List()
  local pattern = "%[!" .. marker_type .. "%]"
  local found = false

  for _, inline in ipairs(inlines) do
    if not found then
      if inline.t == "Str" and inline.text:match(pattern) then
        -- Remove the marker; keep any text after it
        local after = inline.text:gsub(pattern .. "%s*", "")
        if after ~= "" then
          new:insert(pandoc.Str(after))
        end
        found = true
      end
      -- Skip Str/Space elements that are part of the not-yet-found marker
    else
      -- After the marker: skip a leading Space or SoftBreak if we haven't
      -- collected any real content yet
      if #new == 0 and (inline.t == "Space" or inline.t == "SoftBreak") then
        -- skip leading whitespace after marker
      else
        new:insert(inline)
      end
    end
  end

  return new
end

-- ---------------------------------------------------------------------------
-- 1b. Pandoc-native GFM alerts (Pandoc 3.1.14+) → LaTeX callout environments
-- ---------------------------------------------------------------------------
-- Newer Pandoc versions parse standard GFM alerts (NOTE, TIP, IMPORTANT,
-- WARNING, CAUTION) into Div elements with "callout-*" classes before the
-- Lua filter runs. The BlockQuote handler above still catches non-standard
-- types (SUMMARY, EXAMPLE) and serves as a fallback for older Pandoc versions.

local div_class_map = {
  ["callout-warning"]   = "warning",
  ["callout-note"]      = "note",
  ["callout-tip"]       = "tip",
  ["callout-important"] = "important",
  ["callout-caution"]   = "caution",
}

function Div(el)
  -- Check for Pandoc-native callout classes
  for class, env_name in pairs(div_class_map) do
    if el.classes:includes(class) then
      local new_content = pandoc.List()

      for _, block in ipairs(el.content) do
        -- Skip the auto-generated callout-title Div (our mdframed has its own)
        if block.t == "Div" and block.classes:includes("callout-title") then
          -- skip
        else
          new_content:insert(block)
        end
      end

      local result = pandoc.List()
      result:insert(pandoc.RawBlock("latex", "\\begin{" .. env_name .. "}"))
      result:extend(new_content)
      result:insert(pandoc.RawBlock("latex", "\\end{" .. env_name .. "}"))
      return result
    end
  end

  return el
end

-- ---------------------------------------------------------------------------
-- 2. Full-width images
-- ---------------------------------------------------------------------------
-- Pandoc's default LaTeX image output doesn't constrain width. This ensures
-- every image scales to \textwidth so large images don't overflow the page.

function Image(el)
  -- Only override if no explicit width was set in the Markdown
  if not el.attributes.width and not el.attributes.height then
    el.attributes.width = "100%"
  end
  return el
end

-- ---------------------------------------------------------------------------
-- 3. Page breaks before level-1 headings
-- ---------------------------------------------------------------------------
-- Inserts \newpage before every H1 so each major section starts on a fresh page.

function Header(el)
  if el.level == 1 then
    return {
      pandoc.RawBlock("latex", "\\newpage"),
      el,
    }
  end
  return el
end

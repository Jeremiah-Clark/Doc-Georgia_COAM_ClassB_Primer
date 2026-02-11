function BlockQuote(el)
  local first = el.content[1]
  if first and first.t == "Para" then
    local text = pandoc.utils.stringify(first)
    local callout_type = text:match("^%[!(%w+)%]")
    
    if callout_type then
      -- Convert to lowercase for environment name
      local env_name = callout_type:lower()
      
      -- Check if the first paragraph only contains the marker
      local marker_only = text:match("^%[!%w+%]%s*$")
      
      if marker_only then
        -- Remove the entire first paragraph (it's just the marker)
        table.remove(el.content, 1)
      else
        -- Remove just the [!Type] marker from the first paragraph
        local new_content = {}
        local found_marker = false
        
        for i, inline in ipairs(first.content) do
          local inline_text = pandoc.utils.stringify(inline)
          if not found_marker and inline_text:match("^%[!%w+%]") then
            found_marker = true
            local remaining = inline_text:gsub("^%[!%w+%]%s*", "")
            if remaining ~= "" then
              table.insert(new_content, pandoc.Str(remaining))
            end
          else
            table.insert(new_content, inline)
          end
        end
        
        first.content = new_content
      end
      
      -- Create a Div with the callout class instead of raw LaTeX
      -- This lets Pandoc handle the content rendering properly
      local div = pandoc.Div(el.content, {class = env_name})
      
      -- Wrap it in raw LaTeX for the tcolorbox
      local begin_env = pandoc.RawBlock('latex', '\\begin{' .. env_name .. '}')
      local end_env = pandoc.RawBlock('latex', '\\end{' .. env_name .. '}')
      
      local result = {begin_env}
      for i, block in ipairs(el.content) do
        table.insert(result, block)
      end
      table.insert(result, end_env)
      
      return result
    end
  end
  
  return el
end

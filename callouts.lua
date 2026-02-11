function BlockQuote(el)
  local first = el.content[1]
  if first and first.t == "Para" then
    local text = pandoc.utils.stringify(first)
    local callout_type = text:match("^%[!(%w+)%]")
    
    if callout_type then
      -- Convert to lowercase for environment name
      local env_name = callout_type:lower()
      
      -- Remove the [!Type] marker from the first paragraph
      local new_content = {}
      local found_marker = false
      
      for i, inline in ipairs(first.content) do
        local inline_text = pandoc.utils.stringify(inline)
        if not found_marker and inline_text:match("^%[!%w+%]") then
          -- This is the marker, skip it
          found_marker = true
          -- If there's text after the marker in the same inline element, keep it
          local remaining = inline_text:gsub("^%[!%w+%]%s*", "")
          if remaining ~= "" then
            table.insert(new_content, pandoc.Str(remaining))
          end
        else
          table.insert(new_content, inline)
        end
      end
      
      -- Replace the first paragraph's content
      first.content = new_content
      
      -- Create the LaTeX environment
      local begin_env = pandoc.RawBlock('latex', '\\begin{' .. env_name .. '}')
      local end_env = pandoc.RawBlock('latex', '\\end{' .. env_name .. '}')
      
      -- Return the content wrapped in the environment
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

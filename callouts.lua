function BlockQuote(el)
  local first = el.content[1]
  if first and first.t == "Para" then
    local text = pandoc.utils.stringify(first)
    local callout_type = text:match("^%[!(%w+)%]")
    
    if callout_type then
      local env_name = callout_type:lower()
      
      -- Check if marker is standalone
      local marker_only = text:match("^%[!%w+%]%s*$")
      
      if marker_only then
        table.remove(el.content, 1)
      else
        -- Remove marker from first paragraph
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
      
      -- Instead of raw LaTeX blocks, create a proper Div
      -- Pandoc will handle this better
      local div = pandoc.Div(el.content)
      div.classes = {env_name}
      
      return div
    end
  end
  
  return el
end

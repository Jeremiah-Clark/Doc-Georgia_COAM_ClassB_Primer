function Div(el)
  -- Check if the div has one of our callout classes
  local callout_classes = {"important", "note", "warning", "tip", "caution", "summary"}
  
  for _, class in ipairs(callout_classes) do
    if el.classes:includes(class) then
      -- Wrap the div content in the LaTeX environment
      local begin_env = pandoc.RawBlock('latex', '\\begin{' .. class .. '}')
      local end_env = pandoc.RawBlock('latex', '\\end{' .. class .. '}')
      
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

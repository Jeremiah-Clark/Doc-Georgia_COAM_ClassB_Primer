function BlockQuote(el)
  local first = el.content[1]
  if first and first.t == "Para" then
    local text = pandoc.utils.stringify(first)
    local callout_type = text:match("^%[!(%w+)%]")
    
    if callout_type then
      -- Remove the [!Type] line
      table.remove(el.content, 1)
      
      -- Convert to lowercase for environment name
      local env_name = callout_type:lower()
      
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

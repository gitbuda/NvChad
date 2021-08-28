local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- TODO(gitbuda): Find a better place for the user config.
-- Use build as a make directory
vim.cmd [[ let &makeprg="(cd build && make -j8)" ]]

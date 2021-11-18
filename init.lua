local ok, err = pcall(require, "core")

if not ok then
   error("Error loading core" .. "\n\n" .. err)
end

-- TODO(gitbuda): Find a better place for the user config.
-- Use build as a make directory
vim.cmd [[ let &makeprg="(cd build && make -j8)" ]]

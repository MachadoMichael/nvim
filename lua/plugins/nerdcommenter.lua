-- lua/plugins/nerdcommenter.lua
-- NERDCommenter
return {
    'preservim/nerdcommenter',
    config = function()
    vim.g.NERDCreateDefaultMappings = 1
    vim.g.NERDSpaceDelims = 1
    end
}

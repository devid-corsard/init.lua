require 'cmp'.setup {
    snippet = {
        expand = function(args)
            require 'luasnip'.lsp_expand(args.body)
        end
    },

    sources = {
        { name = 'luasnip' },
        -- more sources
    },
}
-- require("luasnip.loaders.from_vscode").load({
--     paths = { "~/.local/share/mynvim/site/pack/packer/start/friendly-snippets" } })
--
-- require("luasnip.loaders.from_vscode").load({
--     paths = { "~/.local/share/mynvim/site/pack/packer/start/vim-react-snippets" } })
require('luasnip').filetype_extend("javascript", { "javascriptreact", "typescriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
require('luasnip').filetype_extend("javascriptreact", { "html" })
require('luasnip').filetype_extend("typescriptreact", { "html" })

require("luasnip.loaders.from_vscode").lazy_load()

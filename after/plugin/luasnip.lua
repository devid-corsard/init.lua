require("luasnip.loaders.from_vscode").lazy_load()
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
-- require('luasnip').filetype_extend("javascript", { "javascriptreact" })

-- require('luasnip').filetype_extend("javascript", { "html" })

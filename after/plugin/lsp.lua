
local lsp = require('lsp-zero').preset("recommended")
--local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  lsp.buffer_autoformat()
  vim.keymap.set("n", "<leader>ga", function() vim.lsp.buf.code_action() end, opts)
end)

--[[ lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['lua_ls'] = {'lua'},
    ['rust_analyzer'] = {'rust'},
    -- if you have a working setup with null-ls
    -- you can specify filetypes it can format.
    -- ['null-ls'] = {'javascript', 'typescript'},
    ['tsserver'] = {'typescript'},
  }
}) ]]

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer'
})

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})

vim.diagnostic.config({
    virtual_text = true
})

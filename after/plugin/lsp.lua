
local lsp = require('lsp-zero').preset("recommended")
--local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    -- lsp.buffer_autoformat()
    vim.keymap.set("n", "<leader>ga", function() vim.lsp.buf.code_action() end, opts)
    vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = {"*.js", "*.ts", "*.tsx", "*.jsx", "*.html", "*.css", "*.json",},
        command = "PrettierAsync",
    })
end)

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['rust_analyzer'] = {'rust'},
  }
})

lsp.ensure_installed({
  'tsserver',
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

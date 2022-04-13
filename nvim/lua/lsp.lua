local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dn', '<cmd>lua vim.lsp.buf.completion()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>de', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>di', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true})

  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.clear_references()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.document_highlight()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.formatting()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.outgoing_calls()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true})
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dx', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', {noremap = true})
end

require('lspconfig')['elixirls'].setup {
  cmd = { '/home/oscar/.lsp/elixir-ls/rel/language_server.sh' },
  on_attach = on_attach,
}

require('lspconfig')['rust_analyzer'].setup {
  cmd = { '/home/oscar/.lsp/rust-analyzer' },
  on_attach = on_attach,
}

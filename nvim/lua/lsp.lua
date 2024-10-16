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

-- require('lspconfig')['elixirls'].setup {
--   cmd = { '/home/oscar/.lsp/elixir-ls/rel/language_server.sh' },
--   on_attach = on_attach,
-- }

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_status = require('lsp-status')
capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

-- Create an event handler for the FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  -- This handler will fire when the buffer's 'filetype' is "elixir"
  pattern = 'elixir',
  callback = function(args)
    vim.lsp.start({
      name = 'elixirls',
      cmd = {'elixir-ls'},
      root_dir = vim.fs.root(args.buf, {'mix.exs'}),
      capabilities = capabilities,
    })
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    on_attach(client, args.buf)
    lsp_status.on_attach(client)
    -- if client.supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation
    -- end
    if client.supports_method('textDocument/completion') then
      -- Enable auto-completion
      vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
      -- neovim 0.11: vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
    end

    if client.supports_method('textDocument/formatting') then
      -- Format the current buffer on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({bufnr = args.buf, id = client.id})
        end,
      })
    end
  end,
})

-- require('lspconfig')['rust_analyzer'].setup {
--   cmd = { '/home/oscar/.lsp/rust-analyzer' },
--   on_attach = on_attach,
-- }

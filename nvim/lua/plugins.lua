return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'overcache/NeoSolarized'
  use 'preservim/nerdtree'
  use 'zefei/vim-wintabs'
  use 'junegunn/fzf'

  use 'terrortylor/nvim-comment'
  use 'neovim/nvim-lspconfig'

  use 'elixir-editors/vim-elixir'
end)

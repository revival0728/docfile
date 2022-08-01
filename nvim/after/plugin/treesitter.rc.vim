if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
	ensure_installed = "maintained",
	sync_install = false,
    enable = true,
    disable = {},
  }
}


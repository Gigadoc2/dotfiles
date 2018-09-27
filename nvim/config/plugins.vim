call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'morhetz/gruvbox'

" Unix Utilities
Plug 'tpope/vim-eunuch'

" Syntax Files
Plug 'saltstack/salt-vim'
Plug 'cometsong/ferm.vim'
Plug 'PProvost/vim-ps1'

" latex tools
Plug 'lervag/vimtex'

call plug#end()

" Gruvbox
let g:gruvbox_italic = 1 " enable italcs, we can handle it

" indentLine
let g:indentLine_color_gui = '#504945'

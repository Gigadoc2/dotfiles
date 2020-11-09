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

" vimtex settings
let g:tex_flavor = 'latex' " only used as a fallback if autodetection fails
let g:vimtex_compiler_latexmk = {
    \ 'build_dir': '_latexmk',
    \ 'options' : [
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
au BufLeave,VimLeavePre *.tex execute "silent !cp -v --reflink=auto _latexmk/".expand('<afile>:t:r').".pdf ."

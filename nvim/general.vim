" use the mouse
set mouse=a

" use all the colors
set termguicolors

" set the colorscheme
colorscheme gruvbox
set bg=dark " this actually determines the background color

" ui settings
set ruler " displays current position in the status line
set number " enables line-numbers

" case sensitivity
set ignorecase " search (and replace) case insensitive by default
set smartcase " however, become case sensitive if we obviously want it

" identation settings
set smarttab " use tabs AND spaces, to piss people off
set noexpandtab
set tabstop=4
set shiftwidth=4 " ident with tabs equivalent to 4 spaces
set copyindent
set preserveindent " but try to retain compatibility
set list " visually discern tabs from spaces

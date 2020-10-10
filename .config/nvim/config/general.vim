""" Terminal options
" use the mouse
set mouse=a

" use the x clipboard
set clipboard+=unnamedplus

" enable 24bit colour in terminals
set termguicolors

" set the title in the terminal
set title

""" Colorscheme
colorscheme gruvbox
set bg=dark " this actually sets the background color in gruvbox

""" UI settings
" displays current position in the status line
set ruler

" enables (hybrid relative/absolute) line-numbers
set number relativenumber

" display a colored column for the 80 character convention
if exists("+colorcolumn")
	set cc=80
endif

""" case sensitivity
" search (and replace) case insensitive by default
set ignorecase

" however, become case sensitive if we obviously want it
set smartcase

""" identation settings
set smarttab " use tabs AND spaces, to piss people off
set noexpandtab
set tabstop=4
set shiftwidth=4 " ident with tabs equivalent to 4 spaces
set copyindent
set preserveindent " but try to retain compatibility
set list " visually discern tabs from spaces

""" completions
set wildmenu " show possible command completions

" complete to the longest common string (like bash), but also show the wildmenu
set wildmode=longest:full

" ignore these file endings when completing
set wildignore=*.o,*.a,*.la,*.lo,*.swp,.svn,.git,*.pyc,*.pyo

""" command interaction
set shellredir=> " do not capture stderr

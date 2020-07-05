" yaml basically always uses 2 spaces as identation
autocmd filetype yaml setlocal et
autocmd filetype yaml setlocal ts=2
autocmd filetype yaml setlocal sw=2

" latex is way prettier with 2 spaces
autocmd filetype tex setlocal ts=2
autocmd filetype tex setlocal sw=2
" wrap words at the boundary
autocmd filetype tex setlocal textwidth=80

" also wrap words for markdown
autocmd filetype markdown setlocal textwidth=80

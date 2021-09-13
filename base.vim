set nocompatible              " be iMproved, required
filetype off                  " required
set number
set relativenumber
set nuw=4
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=UTF-8
set tags=tags

" NOTE: Make sure that you create the following directories
" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.
"
" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/

" set bash login
" open terminal 'drawer'
" TODO: full width?
noremap <silent><C-b> :below 15split term://zsh -l\<CR>
noremap <silent><leader><C-b> :tabe term://zsh -l\<CR>

" tab switching
noremap H gT
noremap L gt

tnoremap <Esc> <C-\><C-n>

noremap <C-s> :source ~/.config/nvim/init.vim<CR>
noremap <C-w> :w<CR>
noremap <C-q> :q<CR>

" helper to identify syntax elements
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" TODO: figure out how to combine and ignore in case intended files aren't represented
autocmd BufRead,BufNewFile .prettierrc set filetype=json
autocmd BufRead,BufNewFile .eslintrc set filetype=json

augroup JavascriptFolding
  au!
  au FileType javascript.jsx setlocal foldmethod=syntax
  au FileType javascript.jsx setlocal foldlevel=99
augroup END



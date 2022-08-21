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

" helper to identify syntax elements
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" line moving mappings, Alt+m + j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" for mac
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" TODO: figure out how to combine and ignore in case intended files aren't represented
autocmd BufRead,BufNewFile .prettierrc set filetype=json
autocmd BufRead,BufNewFile .eslintrc set filetype=json

" vim-javascript related settings, here for folding
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

set foldlevelstart=99

" Conceal
" map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

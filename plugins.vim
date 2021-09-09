" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" See theme.vim
Plug 'rakr/vim-one'

Plug 'Shougo/defx.nvim'
Plug 'kristijanhusak/defx-icons'
source ~/.vim/defx-config.vim

" Plug 'heavenshell/vim-jsdoc', { 
"   \ 'for': ['javascript', 'javascript.jsx','typescript'], 
"   \ 'do': 'make install'
" \}

" Plug 'ctrlpvim/ctrlp.vim'
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'
" Plug 'scrooloose/nerdcommenter'
" Plug 'tpope/vim-surround'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:coc_global_extensions = ['coc-python', 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-sh', 'coc-css', 'coc-html', 'coc-lit-html', 'coc-json', 'coc-git']

" coc mappings
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }

Plug 'pangloss/vim-javascript'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'ap/vim-css-color'

"--- LIT highlighting and autclosing
let g:htl_css_templates = 1
let g:htl_all_templates = 1
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }

Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'json'] }
" 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html',

" End plugin system initialization
call plug#end()
"" PLUG COMMANDS
" PlugInstall [name ...] [#threads]	Install plugins
" PlugUpdate [name ...] [#threads]	Install or update plugins
" PlugClean[!]	Remove unlisted plugins (bang version will clean without prompt)
" PlugUpgrade	Upgrade vim-plug itself
" PlugStatus	Check the status of plugins
" PlugDiff	Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins

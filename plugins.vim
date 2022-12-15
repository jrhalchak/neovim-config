" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-test/vim-test'

" See theme.vim
" Plug 'sainnhe/sonokai'
" Plug 'martinsione/darkplus.nvim'
" Plug 'tomasiser/vim-code-dark'
Plug 'rakr/vim-one'
let g:airline_theme='one'

Plug 'lukas-reineke/indent-blankline.nvim'
lua << EOF
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
EOF
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_use_treesitter_scope = v:true
let g:indent_blankline_show_current_context = v:true
let g:indent_blankline_show_current_context_start = v:true
let g:indent_blankline_show_current_context_start = v:true
let g:indent_blankline_show_end_of_line = v:true
let g:indent_blankline_space_char_blankline = '⋅'
let g:indent_blankline_space_char = '⋅'
let g:indent_blankline_char = '¦'
let g:indent_blankline_context_char = '¦'
let g:indent_blankline_context_char_blankline = '¦'
let g:indent_blankline_char_blankline = '¦'
let g:indent_blankline_show_curent_context = v:true
let g:indent_blankline_show_curent_context_start = v:true

Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts=1

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" REQUIRES ripgrep
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


Plug 'preservim/nerdtree'
" Plug 'PhilRunninger/nerdtree-visual-selection' ?
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plug 'easymotion/vim-easymotion'

Plug 'delphinus/vim-firestore'

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-python', 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-sh', 'coc-css', 'coc-html', 'coc-lit-html', 'coc-json', 'coc-git', 'coc-flow']

" coc mappings
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

Plug 'leafgarland/typescript-vim'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'ap/vim-css-color'
Plug 'sbdchd/neoformat'

autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.html Neoformat

Plug 'godlygeek/tabular'

"--- Has MD codeblock highlighting
Plug 'preservim/vim-markdown'
"--- Runs browser preview as plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"--- LIT highlighting and autclosing
let g:htl_css_templates = 1
let g:htl_all_templates = 1
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescriptreact': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascriptreact': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }

Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons'

" Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-treesitter/nvim-treesitter'
" Treesitter requires parsers, can install with :TSInstall <language_to_install>
" where the language is anything supported by nvim-treesitter already
" options as of 08-07-2022 are: astro, bash, beancount, bibtex, c, c_sharp, clojure, cmake, comment, commonlisp, cooklang, cpp, css, cuda, d, dart, devicetree, dockerfile, dot, eex, elixir, elvish, erlang, fennel, fish, foam, fusion, Godot, (maintained by @Shatur95) gleam, Glimmer and Ember, glsl, go, Godot Resources, (maintained by @pierpo) gomod, gowork, graphql, hcl, heex, help, hjson, hocon, html, http, java, javascript, jsdoc, json, json5, JSON with comments, julia, kotlin, lalrpop, latex, ledger, llvm, lua, m68k, make, markdown, markdown_inline, ninja, nix, norg, ocaml, ocaml_interface, ocamllex, pascal, perl, php, phpdoc, pioasm, prisma, proto, pug, python, ql, qmljs, Tree-sitter query language, r, racket, rasi, regex, rego, rnoweb, rst, ruby, rust, scala, scheme, scss, slint, solidity, sparql, sql, supercollider, surface, svelte, swift, teal, tiger, tlaplus, todotxt, toml, tsx, turtle, typescript, v, vala, verilog, vim, vue, wgsl, yaml, yang, zig

" Plug 'danymat/neogen'
" lua << EOF
" require("neogen").setup {
"   snippet_engine = "luasnip",
"   enabled = true,
"   languages = {
"     lua = {
"       template = {
"         annotation_convention = "ldoc",
"       },
"     },
"     python = {
"       template = {
"         annotation_convention = "google_docstrings",
"       },
"     },
"     rust = {
"       template = {
"         annotation_convention = "rustdoc",
"       },
"     },
"     javascript = {
"       template = {
"         annotation_convention = "jsdoc",
"       },
"     },
"     javascriptreact = {
"       template = {
"         annotation_convention = "jsdoc",
"       },
"     },
"     typescript = {
"       template = {
"         annotation_convention = "tsdoc",
"       },
"     },
"     typescriptreact = {
"       template = {
"         annotation_convention = "tsdoc",
"       },
"     },
"   }
" }
" EOF
" 
" " generate annotation
" nnoremap <silent> <leader>nf :lua require'neogen'.generate()<CR>

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

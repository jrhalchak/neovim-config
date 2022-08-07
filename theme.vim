" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

set background=dark
" let g:sonokai_style = 'shusia'
" let g:sonokai_enable_italic = 1

" colorscheme sonokai
" colorscheme darkplus
"
set t_Co=256
set t_ut=
colorscheme codedark

" General italic items
hi Comment              gui=italic
hi Conditional          gui=italic
hi Include              gui=italic
hi Keyword              gui=italic
hi Label                gui=italic
hi StorageClass         gui=italic
hi Statement            gui=italic

" JS Specific - May need to check python/other-langs
hi jsFuncArgs           gui=bold
hi jsOperatorKeyword    gui=italic

" HTML Specific
hi htmlArg              gui=italic
hi htmlTag              gui=italic

" Markdown Specific
hi markdownH1           gui=bold            guifg=#D16969
hi markdownH2           gui=bold            guifg=#ce9178
hi markdownH3           gui=bold            guifg=#B5CEA8
hi markdownH4           gui=bold            guifg=#c586c0
hi markdownH5           gui=bold            guifg=#dcdcaa
hi markdownH6           gui=bold            guifg=#9cdcfe

hi markdownItalic       gui=italic
hi markdownBold         gui=bold
hi markdownBoldItalic   gui=bold,italic     guifg=#569cd6


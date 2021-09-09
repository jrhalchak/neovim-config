set background=light
let g:one_allow_italics = 1 " colorscheme at the bottom

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

" Custom Statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0? ' ⎇ '.l:branchname.' ' : ''
endfunction

" Powerline character catalog
" ▓▒░
"   
"   
"  │ ╱
"   
" X        

" Build Statusline                                        -- Begin left side
set statusline=%#BufferCapSL#\ %*
set statusline+=%#BufferSL#\ ⬒\:%n\ %*
set statusline+=%#BufferCapSL#\ %*
set statusline+=\ %#GitSL#%{StatuslineGit()}\ %*
set statusline+=\ %f                                      " filename
set statusline+=%=                                        " -- Begin right side
set statusline+=%#FileTypeSL#\ %Y\ %*
set statusline+=\ \ L:%l/%L\ \ C:%c\                                 " currentline / total lines

function! StatuslineCustomization() abort
  hi Search guibg=#d3d3d3  guifg=24 gui=italic
  hi StatusLine guibg=#124366 guifg=#ffffff
  hi StatusLineNC guibg=#124302 guifg=#ffffff

  hi BufferSL guibg=#FFFFFF guifg=#407852
  hi BufferCapSL guibg=transparent guifg=#FFFFFF
  hi GitSL guibg=24  guifg=231
  hi FileTypeSL guibg=231 guifg=24
endfunction

colorscheme one

augroup SchemeCustomization
    autocmd!
    autocmd ColorScheme * call StatuslineCustomization()
augroup END

function! InsertColorSL(mode)
  if a:mode == 'i'
    hi StatusLine guibg=DeepSkyBlue4 ctermfg=15 guifg=White ctermbg=24 cterm=bold gui=bold
  endif
endfunction

function! BufColorSL(direction)
  if a:direction == 'enter'
    hi StatusLine guibg=DeepSkyBlue4 ctermfg=15 guifg=White ctermbg=24 cterm=bold gui=bold
  elseif a:direction == 'leave'
    hi StatusLine guibg=DeepSkyBlue4 ctermfg=15 guifg=White ctermbg=24 cterm=bold gui=bold
  endif
endfunction

au InsertEnter * call InsertColorSL(v:insertmode)
au InsertLeave * call InsertColorSL(v:insertmode)
au BufEnter * call BufColorSL("enter")
au BufLeave * call BufColorSL("leave")

" function! CustomHighlights() abort
"       highlight jsClassMethodType cterm=italic gui=italic
"       highlight jsStorageClass cterm=italic gui=italic
"       highlight jsThis cterm=italic gui=italic
"       highlight jsFuncCall cterm=italic,bold gui=italic,bold
"       highlight jsSuper cterm=italic gui=italic
"       highlight jsAsyncKeyword cterm=italic gui=italic
"       highlight jsReturn cterm=italic gui=italic
"       highlight jsComment cterm=italic gui=italic
"       highlight jsCommentTodo cterm=bold gui=bold guifg=#FFFFFF ctermfg=15 guibg=#f07176 ctermbg=204
"       highlight litHtmlRegion cterm=italic gui=italic
"       highlight htmlArg cterm=none gui=none guifg=#5f5faf ctermfg=61
"       highlight cssLiteral cterm=italic gui=italic
"       highlight cssTagName cterm=italic gui=italic
"       highlight cssComment cterm=italic gui=italic
"       highlight cssClassName cterm=italic gui=italic
"       highlight cssUnitDecorators cterm=italic gui=italic
"       highlight cssImportant cterm=italic gui=italic
" endfunction

" augroup SchemeCustomization
"     autocmd!
"     autocmd ColorScheme * call CustomHighlights()
" augroup END

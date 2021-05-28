" set script encoding
scriptencoding utf-8

set termguicolors
set winblend

set number relativenumber
syntax enable

set encoding=utf-8
set nowrap
set mouse=a
set title
set cmdheight=2
set laststatus=2
set scrolloff=5
set expandtab
set shell=fish
set backspace=start,eol,indent


"-------------------------------------------------------------------------------
" Coc.nvim
"-------------------------------------------------------------------------------
" TextEdit might fail if hidden is not set.
set hidden

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" indents
filetype indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set backspace=start,eol,indent

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescript
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

"-------------------------------------------------------------------------------
" Cursor line
"-------------------------------------------------------------------------------
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr       cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif
"-------------------------------------------------------------------------------


"-------------------------------------------------------------------------------
" Emmet
"-------------------------------------------------------------------------------
let g:user_emmet_leader_key=','

" use className when expanding .class syntax
let g:user_emmet_settings={
\ 'javascript' : {
\   'extends' : 'jsx',
\    'default_attributes' : {
\      'class': { 'className': ' '},
\    },
\  },
\}

"-------------------------------------------------------------------------------
" THEME
"-------------------------------------------------------------------------------
runtime ./colors/NeoSolarized.vim

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:indentLine_char = '▏'

source ~/.vimrc.maps
source ~/.vimrc.lightline

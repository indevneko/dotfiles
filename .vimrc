" set script encoding
scriptencoding utf-8
syntax enable

set termguicolors
set number relativenumber
set nowrap
set mouse=a
set scrolloff=10
set expandtab
set shell=fish
set ignorecase
set smarttab
set cursorline
"-------------------------------------------------------------------------------
" Coc.nvim
"-------------------------------------------------------------------------------
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" indents
filetype indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set backspace=start,eol,indent

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" GoTo code navigation.
" nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" For scss files, you may need use:
autocmd FileType scss setl iskeyword+=@-@

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" treat all json as jsonc
augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescript.tsx
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

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

let g:user_emmet_settings={
\ 'typescript' : {
\   'extends' : 'tsx',
\    'default_attributes' : {
\      'class': { 'className': ' '},
\    },
\  },
\}

" Other Plugin
" Rainbow
let g:rainbow_active = 1

" INDENT
let g:indentLine_char = '▏'

" vim-json
let g:vim_json_syntax_conceal = 0

source ~/.vimrc.maps

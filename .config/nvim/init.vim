source ~/.vimrc

" true color
if exists("&termguicolors") && exists("&winblend")
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
endif

" vim-plug
call plug#begin('~/.config/nvim/plugged')
 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" 2021.05.11 rainbow brackets
Plug 'frazrepo/vim-rainbow'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

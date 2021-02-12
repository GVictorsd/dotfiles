" directory for plugins

"call plug#begin('~/.vim/plugged')

"Plug 'vimwiki/vimwiki'
"Plug 'itchyny/lightline.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'ackyshake/VimCompletesMe'
"Plug 'pacha/vem-tabline'
"Plug 'unblevable/quick-scope'
"call plug#end()


let g:termdebug_popup = 0
let g:termdebug_wide = 163
let $BASH_ENV="~/.vim/vim_bash"

if !has('gui_running')
	set t_Co=256
endif

"let g:lightline = {
"	\ 'colorscheme' : 'powerline'
"	\ }


" settings for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" /settings for syntastic

" settings for lightline
"set laststatus=2
" /settings for lightline

filetype plugin on
syntax on
colorscheme koehler

set noshowmode
set autoindent
set smartindent
set smarttab
set cindent
set noerrorbells
set smartcase	" do smart case matching
set showmatch	" show matching brackets
set incsearch	" incremental search
set autowrite	" Automatically save before commands like :next and :make
" set visualbell
set clipboard=unnamed
set cursorline
set nocompatible
set path+=**
set wildmenu
set hls	" highlight all search matches
" set ignorecase
set is
set background=light
set tabstop=4
set shiftwidth=4
set relativenumber
"set noshowmode

imap [ []<esc>i
imap { {}<esc>i
imap ( ()<esc>i
imap {<CR> {<CR>}<esc>kA<CR>
imap ff <esc>bdwA
imap jj <esc>


" Make vertical separator pretty
highlight VertSplit cterm=NONE
set fillchars+=vert:\|

" Pane navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Copy to system clipboard
noremap <leader>c "*yy<cr>

" Paste without indent
noremap<leader>v "+p<cr>

" shortcut to run programs...
noremap <leader>r <esc>:!clear; run %<CR>

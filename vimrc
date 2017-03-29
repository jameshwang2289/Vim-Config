syntax on
set backspace=indent,eol,start
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set t_Co=256
set encoding=utf-8
set mouse=a
set cursorline
set ignorecase
set smartcase
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set wildmenu
source $VIMRUNTIME/menu.vim
set wildcharm=<C-Z>
map ` :emenu <C-Z>
map O <C-w>T
map + :emenu Window.Max\ Width<ENTER>
map = :emenu Window.Equal\ Size<ENTER>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-x> :bd<CR>
nnoremap <silent> <C-b> :!clear;python3 %<CR>
nnoremap <silent> <C-g> :!make;clear && ./%:r <CR>
filetype plugin indent on
map ' <Leader>cm
colorscheme molokai

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"airline
execute pathogen#infect()
set laststatus=2
let g:airline_powerline_fonts = 1

"nerdtree
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:airline#extensions#tabline#enabled = 1

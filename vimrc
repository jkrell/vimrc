execute pathogen#infect()

let loaded_matchparen = 1 

set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshowmatch
set nu
set vb
set incsearch

" make tab in v mode ident code
vmap <tab> >gv 
vmap <enter> <gv 

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

au BufReadPost *.wsgi set syntax=python

" Syntax highlighting
syn on
colorscheme solarized
set bg=dark



filetype plugin on
set ofu=syntaxcomplete#Complete


" highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
" match OverLength /\%81v.\+/
au BufReadPost *.py highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au BufReadPost *.py match OverLength /\%80v.\+/


autocmd BufWritePre *.py :%s/\s\+$//e



set cc=80
set backspace=indent,eol,start


let g:airline_powerline_fonts = 1
set laststatus=2


nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :TagbarToggle<CR>

" NERD Tree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


nnoremap <silent> <S-Right> <c-w>l
nnoremap <silent> <S-Left> <c-w>h
nnoremap <silent> <S-Up> <c-w>k
nnoremap <silent> <S-Down> <c-w>j


highlight SignColumn ctermbg=black
highlight GitGutterAdd ctermbg=black
highlight GitGutterChange ctermbg=black
highlight GitGutterDelete ctermbg=black
highlight GitGutterChangeDelete ctermbg=black


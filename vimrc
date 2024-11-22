set et
set nu
" set relativenumber
set ts=4
set sw=4
set expandtab
set ruler
set cursorline

set nobackup
set noswapfile

set fileencodings=utf8,euc-kr
set clipboard=unnamed " use OS clipboard

syntax on

" bracket macro
let @l = 's(p'
let @k = 's{p'
let @j = 's[p'

let g:neocomplcache_enable_at_startup = 1
let g:loaded_perl_provider = 0
let g:python3_host_prog = '$PYROOT'

" terminal
nmap <silent> T :terminal<CR>
" tnoremap <silent> <Esc> <C-\><C-n>

" VISUAL BLOCK MODE
" nmap <silent> <c-g> <c-v>

" User Definition Function

" Relative Number Setting
function! ToggleRelativeNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

noremap <silent> <leader>r :call ToggleRelativeNumber()<CR>

" delimitmate
let delimitMate_expand_cr = 1

" NERDTree
nmap <silent> <c-f> :NERDTreeToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tokyonight'
let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
" let g:airline#extensions#tabline#fnamemod = ':t'          " vim-airline 버퍼 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1       " buffer number를 보여준다
let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format

" indentLine
let g:indentLine_enabled = 1
" let g:indentLine_char = '¦'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setConceal = 1
let g:vim_json_conceal = 0
let g:markdown_syntax_conceal = 0

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR> 
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR> 

" tagbar
nmap <silent> <F12> :TagbarToggle<CR>
let g:tagbar_width=40
" macos + homebrew
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'

" set not use preview in python
" set completeopt-=preview
set noic

" markdown-preview
" let g:mkdp_auto_start = 1
" let g:mkdp_auto_close = 1
" let g:mkdp_refresh_slow = 0
" let g:mkdp_command_for_global = 0
" let g:mkdp_open_to_the_world = 0
" let g:mkdp_open_ip = ''

" set coc.nvim extensions
let g:coc_global_extensions = ['coc-python', 'coc-clangd', 'coc-cmake', 'coc-json', 'coc-sh', 'coc-webview', 'coc-markdown-preview-enhanced', 'coc-fish']
" Remap <C-f> and <C-b> to scroll float windows/popups
" nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" vim-combo
" set statusline=%{g:combo}

" telescope.nvim
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" vim-airline-clock
" let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#format = '%H:%M'

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }, 'python': { 'left': '#' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <leader>cc <plug>NERDComToggleComment
map <leader>c<space> <plug>NERDComComment

" vim-python-doc
let g:vpd_indent = '    '
let g:python_style = 'numpy'
nnoremap <silent> <Leader>d <cmd>Docstring<CR>

" set vim-plug for neovim
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'scrooloose/syntastic'
" Plug 'Shougo/neocomplcache'
Plug 'preservim/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-smooth-scroll'
Plug 'Yggdroot/indentLine'
" Plug 'ctrlpvim/ctrlp.vim'  " Don't work on macbook
" Plug 'iamcco/markdown-preview.nvim'
" Plug 'pboettch/vim-cmake-syntax'
" Plug 'morhertz/gruvbox'
" Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'alemidev/vim-combo'
Plug 'nvim-lua/plenary.nvim'    " For nvim-telescope
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }     " or { 'tag': '0.1.8' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " For nvim-telescope
Plug 'folke/tokyonight.nvim'
Plug 'enricobacis/vim-airline-clock'
Plug 'preservim/nerdcommenter'
Plug 'mistricky/codesnap.nvim', { 'do': 'make' }
Plug 'pixelneo/vim-python-docstring'
" Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }    " For render-markdown
" Plug 'nvim-tree/nvim-web-devicons'  " For render-markdown
" Plug 'MeanderingProgrammer/render-markdown.nvim'    " pip install pylatexenc
Plug '3rd/image.nvim'
Plug 'jake-stewart/multicursor.nvim'
Plug 'airblade/vim-gitgutter'

call plug#end()

" vim color scheme
" colorscheme vim
" colorscheme tokyonight-moon
colorscheme tokyonight-moon

" codesnap.nvim, image.nvim
:lua require("init")

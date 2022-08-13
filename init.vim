call plug#begin('/home/kaizuser/.config/nvim/autoload/plugged')

" PLUGINS -----------------------------------------------------------------
" Themes
Plug 'Mofiqul/dracula.nvim'
Plug 'morhetz/gruvbox'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dracula/vim', { 'as': 'dracula' }   
Plug 'kyazdani42/nvim-web-devicons'

" Syntax
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-syntastic/syntastic'
Plug 'valloric/youcompleteme'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'

" Icons
Plug 'ryanoasis/vim-devicons'

" Shortcuts
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jeetsukumaran/vim-buffergator'

" Buffers
Plug 'romgrk/barbar.nvim'

call plug#end()

" BASIC DETAILS -----------------------------------------------------------
set number 

" SHORCUTS ----------------------------------------------------------------
" Easymotion-nerdtree
let mapleader=' '
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" Buffers
set termguicolors
let bufferline = get(g:, 'bufferline', {})

let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.both = v:true

let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''

nnoremap <Leader>j :BufferPrevious<CR>
nnoremap <Leader>k :BufferNext<CR>
nnoremap <Leader>h :BufferMovePrevious<CR>
nnoremap <Leader>l :BufferMoveNext<CR>
nnoremap <Leader>d :BufferClose<CR>

" AESTHETIC THEMES --------------------------------------------------------
syntax enable
colorscheme dracula

" Airline
set t_Co=256

" NerdTree
set guifont=Fura\ Nerd\ Font\ Complete\ Mono\ 12
let g:airline_powerline_fonts = 1

" INTERFACE PLUGINS -------------------------------------------------------
" Syntastic
set signcolumn=no

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors=1

let g:syntastic_quiet_messages={'type':'style'}
let g:syntastic_quiet_messages={'type':'warning'}
let g:syntastic_quiet_messages={'!level':'errors'}

" SYNTAX ------------------------------------------------------------------
" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascriptreact' : 1,
    \ 'typescriptreact' : 1,
    \ 'jsx' : 1,
    \ 'tsx' : 1,
    \ 'javascript' : 1,
    \ 'typescript' : 1}

" Vim-closetag


let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.jsx, *.tsx, *.js, *.ts'
let g:closetag_xhtml_filenames = '*.xhtml, *.jsx, *.tsx, *.js, *.ts'
let g:closetag_filetypes = 'html, xhtml ,phtml, jsx, tsx, js, ts, typescriptreact, javascriptreact'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,ts'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1







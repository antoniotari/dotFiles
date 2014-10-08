"Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

set number
set ruler

set colorcolumn=80
set tw=80

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap

set history=700
set undolevels=700

" Show whitespace
" " MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
"
"
" " Color scheme
" " mkdir -p ~/.vim/colors && cd ~/.vim/colors
" " wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod
highlight ColorColumn ctermbg=233

set mouse=a

nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ L%l:C%c


autocmd! bufwritepost .vimrc source %

" File Type Fix for prolog
autocmd BufNewFile,BufRead *.pl set filetype=prolog

let mapleader = ","
" Quick quit command
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>Q :qall<CR> 
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>w :w<CR>

vnoremap <Leader>s :sort<CR>

" vnoremap < <gv
" vnoremap > >gv


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Toggles
noremap <F1> :set invnumber<CR>
set pastetoggle=<F2>
noremap <F3> :set hlsearch! hlsearch?<CR>

" TODO: Resize windows -- don't know how to do this yet.. ideal, way: A Function
" Key to trigger resize mode, then can just resize using h/j/k/l; F3 again to
" off it.

" easier moving between tabs
noremap <c-u> :tabprevious<CR>
noremap <c-o> :tabnext<CR>


" Disable Swap Files
"set nobackup
"set nowritebackup
"set noswapfile

" CtrlP Settings
let g:ctrlp_max_height = 30
set wildignore+=*.pyc,*_build/*,*/coverage/*

" Folding
nnoremap <Space> za

" Turn off code checking
let g:pymode_lint = 0

vmap Q gq
nmap Q gqap

" Search Related
set incsearch



" Settings for vim-powerline
"cd ~/.vim/bundle
"git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
"cd ~/.vim/bundle
"git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" " Settings for python-mode
" " Note: I'm no longer using this. Leave this commented out
" " and uncomment the part about jedi-vim instead
" " cd ~/.vim/bundle
" " git clone https://github.com/klen/python-mode
" "" map <Leader>g :call RopeGotoDefinition()<CR>
" "" let ropevim_enable_shortcuts = 1
" "" let g:pymode_rope_goto_def_newwin = "vnew"
" "" let g:pymode_rope_extended_complete = 1
" "" let g:pymode_breakpoint = 0
" "" let g:pymode_syntax = 1
" "" let g:pymode_syntax_builtin_objs = 0
" "" let g:pymode_syntax_builtin_funcs = 0
" "" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" " Better navigating through omnicomplete option list
" " See
" http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
     endif
     return a:action
 endfunction


inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

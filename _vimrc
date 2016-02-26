"-------------------------------------------------------------------------------
" VIM
"-------------------------------------------------------------------------------
set autoindent                  " auto indent
set cindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set visualbell
set number
set ruler
set title
set wrap
set cursorline
set linebreak
set colorcolumn=81
set hlsearch                    " high lighting
set nowrapscan
set bs=eol,start,indent
syntax on
colorscheme desert 
filetype indent on
set background=dark


"-------------------------------------------------------------------------------
" Vundle 
"-------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

Plugin 'Trinity'
Plugin 'SrcExpl'
Plugin 'taglist-plus'
Plugin 'kien/ctrlp.vim'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"-------------------------------------------------------------------------------
" Buffer 
"-------------------------------------------------------------------------------
filetype plugin indent on
map ,1 :b!1<CR> 
map ,2 :b!2<CR> 
map ,3 :b!3<CR> 
map ,4 :b!4<CR> 
map ,5 :b!5<CR> 
map ,6 :b!6<CR> 
map ,7 :b!7<CR> 
map ,8 :b!8<CR> 
map ,9 :b!9<CR> 
map ,0 :b!10<CR> 
map ,w :bw<CR>


"-------------------------------------------------------------------------------
" Trinity 
"-------------------------------------------------------------------------------
nmap <F8>   :TrinityToggleAll<CR>
nmap <F9>   :TrinityToggleSourceExplorer<CR>
nmap <F10>  :TrinityToggleTagList<CR> 
nmap <F11>  :TrinityToggleNERDTree<CR>


"-------------------------------------------------------------------------------
" Ctags and Cscope 
"-------------------------------------------------------------------------------
" Vim will look for cscope.out file everywhere starting from the current directory up to the root
" http://vim.wikia.com/wiki/Autoloading_Cscope_Database
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
call LoadCscope()
 
" Vim will look for tags file everywhere starting from the current directory up to the root
set tags=tags;/


"-------------------------------------------------------------------------------
" Ctags and Cscope 
"-------------------------------------------------------------------------------
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


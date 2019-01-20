if v:progname =~? "evim" 
  finish 
endif 

function! GetTime()
    let str = ""
    let str = strftime(" %Y-%m-%d %a %H:%M ")
    return str
endfunction

"// encoding.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set fileformat=unix
set fileformats=unix,dos,mac

"// visualization.
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"colorscheme 256_simple 
set backspace=indent,eol,start 
"set cinoptions+=:0 
set cinoptions+=g0 
set cmdheight=1 
"set noexpandtab 
set expandtab 
set helplang=ja 
set history=50 
set hlsearch 
set ignorecase 
set incsearch 
set laststatus=2 
"set mouse=nih 
set noautoindent 
set nobackup 
set nocompatible 
set nonumber 
set number 
set notitle 
set nrformats-=octal 
set ruler 
set scrolloff=5 
set shiftwidth=4 
set showcmd 
set showmatch 
set smartcase 
set softtabstop=4 
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P%{GetTime()}
"set tabstop=8 
set tabstop=4 
"set term=builtin_xterm 
set term=xterm-256color 
set t_Co=256 
"set title 
set ttymouse=xterm2 
set updatecount=10 
"set visualbell 
set wildmode=list:full 
set wildmenu 
set wrapscan 
syntax on 
 
" Perl - *.pl ?ξ??? : ??ǥ?ߥ????????ʤ?, syntax ?? color scheme ?롼??????ä??ѹ? 
au BufNewFile,BufRead *.pl set iskeyword+=: 
let perl_no_extended_vars=1 
 
nmap <Esc><Esc> :nohlsearch<CR><Esc> 
 
" Completion - ???å????䴰, ?ҤȤˤ?äƤ????????⤷??ʤ?^M"inoremap { {}<LEFT> 
"inoremap [ []<LEFT> 
"inoremap ( ()<LEFT> 
"inoremap " ""<LEFT> 
"inoremap ' ''<LEFT> 
"vnoremap { "zdi{<C-R>z}<ESC> 
"vnoremap [ "zdi[<C-R>z]<ESC> 
"vnoremap ( "zdi(<C-R>z)<ESC> 
"vnoremap " "zdi"<C-R>z"<ESC> 
"vnoremap ' "zdi'<C-R>z'<ESC> 
 
" ???ϥ⡼????? ,df ,dd ,dt ?ǻ??֤????? 
inoremap <expr> ,df strftime("%Y-%m-%d %T") 
inoremap <expr> ,dd strftime("%Y-%m-%d") 
inoremap <expr> ,dt strftime("%T") 
 
" ???ϥ⡼?ɤǤΥ????Х???ǥ??? 
inoremap <C-a> <Home> 
inoremap <C-e> <End> 
inoremap <C-d> <Del> 
 
" ???ϥ⡼?ɤǤ? CTRL-H, J, K, L ??Ȥ???褦?ˤ???^M" ?????ߥʥ?¦?? BackSpace ?? CTRL-H ??????????????? 
" ??????Ǥ? BS ?????? CTRL-? (Char-0x7f) ?????????Ƥ??????ͭ???ʶ??????򤷤Ƥ??? 
"inoremap <Char-0x7f> <BackSpace> 
"nnoremap <Char-0x7f> <Left> 
"inoremap <C-h> <Left> 
"inoremap <C-j> <Down> 
"inoremap <C-k> <Up> 
"inoremap <C-l> <Right>  
nnoremap <Space> <PageDown> 
 
" :Eucjp :Utf8 :Sjis :Jis ?ʤɤǥ??󥳡??ǥ??󥰤???ꤷ???Խ? 
command! Cp932 edit ++enc=Cp932 
command! Eucjp edit ++enc=euc-jp 
command! Iso2022jp edit ++enc=iso-2022-jp 
command! Utf8 edit ++enc=utf-8 
 
command! Jis Iso2022jp 
command! Sjis Cp932 
 
" Window - CTRL-W CTRL-V ?ޤ??? CTRL-W CTRL-H ?ǥ?????ɥ?ʬ????ե?????ꥹ??ɽ?? 
map <C-W><C-V> :Vexplore!<CR> 
map <C-W><C-H> :Hexplore<CR> 
map! <C-W><C-V> <Esc>:Vexplore!<CR> 
map! <C-W><C-H> <Esc>:Hexplore<CR> 
 
" Menu/StatusLine - ???쥯?ȥ?˥塼???ѹ?, ???ơ??????饤???ѹ?^Mhi PmenuSel ctermbg=1 
hi StatusLine ctermfg=4 ctermbg=7 
 
" StatusLine Colors - ?⡼?ɤˤ?äƥ??ơ??????饤??ο???ưŪ???Ѳ??????? 
augroup InsertHook 
autocmd! 
autocmd InsertEnter * highlight StatusLine ctermfg=1 ctermbg=7 
autocmd InsertLeave * highlight StatusLine ctermfg=4 ctermbg=7 
augroup END 
 
" Folding 
" ??Ƭ?? h ?򲡤????޾????
nnoremap <expr> h col('.') == 1 && foldlevel(line('.')) > 0 ? 'zc' : 'h' 

vnoremap <expr> l foldclosed(line('.')) != -1 ? 'zogv0' : 'l' 
 
" ???ѥ??ڡ??????в? 
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white 
" match ZenkakuSpace /??/

"オプション有効化 set <option>
"オプション無効化 set no<option>
"オプションの値を確認 set <option>?

"-------- 基本設定 --------
"vimがタイトルを変更しないようにする
set notitle

"シンタックスハイライトon
syntax on
"vimがダークモードに合うカラー表示にする
set background=dark
"ターミナルで256色表示を使う
set t_Co=256

"ref : https://bit.ly/31FKG1g
"tabstopに達してもタブには変換されずスペースのまま
set expandtab
"タブ文字が占めるスペース幅
set tabstop=4
set shiftwidth=0
"改行時に同じレベルのインデントで開始する
set autoindent

"行番号を表示する
set number

"不可視文字を表示する
"ref : https://bit.ly/3afDpcr
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"メッセージラインを1行表示する
set cmdheight=1
"メッセージライン右に、入力中のコマンドを表示する
set showcmd
"ワイルドメニューを有効にする
set wildmenu
set wildmode=list:full

"現在の行をハイライトする
set cursorline
"現在の列をハイライトする
set cursorcolumn
"カーソルが何行目の何列目に置かれているかを表示する
set ruler

"対応()をハイライトする
set showmatch
"閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set nostartofline

"コマンド、検索パターンを50まで保存する
set history=50

"バックスペースで削除できる対象を指定する
set backspace=indent,eol,start

"ref : https://bit.ly/3fJxwW3
"スワップファイルを作成する(updatecount以上ファイルに書き込まれたら作成)
set swapfile
set updatecount=10
"バックアップファイルを作成しない
set nobackup
"undoファイルを作成しない
set noundofile

"カーソルの上下に表示する最小の行数を指定する
set scrolloff=5

"vimで数を増減させる時に10進数として扱う(CTRL-A, CTRL-X)
set nrformats-=octal

"ターミナル上からの張り付けを許可する
" ※有効化するとremap機能が使えなくなるので注意(https://bit.ly/2Dtc6Qc)
"set paste

"-------- エンコード --------
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set fileformat=unix
set fileformats=unix,dos,mac

"-------- 検索 --------
"検索結果のハイライト
set hlsearch
"検索時に大文字と小文字を区別しない
set ignorecase
"検索ワードに大文字が含まれる場合、大文字と小文字を区別する
set smartcase
"インクリメンタルサーチ(入力のたびに候補を表示させる)
set incsearch
"ファイル末尾まで検索したら、ファイル先頭から再び検索する
set wrapscan

"-------- ステータスライン --------
"画面の最下部にステータスラインを常に表示
set laststatus=2
"ファイルナンバー表示
set statusline=[%n]
"ホスト名表示
"set statusline+=%{matchstr(hostname(),'\\w\\+')}@
"ファイル名表示
set statusline+=%<%F
"変更のチェック表示
set statusline+=%m
"読み込み専用かどうか表示
set statusline+=%r
"ヘルプページなら[HELP]と表示
set statusline+=%h
"プレビューウインドウなら[Prevew]と表示
set statusline+=%w
"ファイルフォーマット表示
set statusline+=[%{&fileformat}]
"文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
"ファイルタイプ表示
set statusline+=%y
"ここからツールバー右側
set statusline+=%=
"文字バイト数/カラム番号
set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]
"現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]
"現在文字行/全体行表示
set statusline+=[L=%l/%L]
"現在行が全体行の何%か表示
set statusline+=[%p%%]
"レジスタの中身を表示
"set statusline+=[RG=\"%{getreg()}\"]

"-------- InsertMode remap --------
"閉じ記号補完
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap { {}<LEFT>

"-------- VisualMode remap --------
"閉じ記号補完
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"-------- NormalMode remap --------
"スペースキー押下 → ページダウン
nnoremap <Space> <PageDown>

set nocompatible		"禁止一致性
set encoding=utf-8	"编码方案
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set mouse=a					"设置在vim中可以使用鼠标
set nu							"设置行号
syntax on						"开启语法高亮
set autoindent			"自动缩进
set cindent					"C风格缩进
set tabstop=2   		"tab键宽度=2
set shiftwidth=2		"设置自动对齐时空格
set autowrite				"自动保存
set cursorline			"突出显示当前行
set nobackup				"不要备份文件
set noswapfile			"禁止临时文件
set history=400			"设置VIM记录的历史数
set ignorecase			"搜索时大小写忽略
set showmatch				"高亮显示匹配的括号
set matchtime=1			"匹配括号高亮的时间(时间为十分之一秒)
set showcmd					"在状态栏显示正在输入的命令
colorscheme darkblue "深蓝色


"在被分割的窗口间显示空白
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

filetype off 				"检测文件类型
filetype indent on 	"针对不同的文件采取不同的缩进方式
filetype plugin on 	"允许插件
filetype plugin indent on "启动只能补全

"*******************************************************
"										Vundle 配置												 "
"*******************************************************

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Bundle 'VundleVim/Vundle.vim'

" My Bundles here:

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'Syntastic'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ORobot/YouCompleteMe'

call vundle#end()


"*******************************************************
"											taglist配置											 "
"*******************************************************

let Tlist_Compact_Format=1		"不显示press F1 to display help
let Tlist_Use_Right_Window=1	"窗口在左侧显示
let Tlist_Show_One_File=1			"只显示当前文件的tags
let Tlist_Auto_Highlight_tag=1"高亮显示
let Tlist_Auto_Update=1				"随文件自动更新
let Tlist_WinWidth=30					"设置宽度
let Tlist_Exit_OnlyWindow=1		"taglist窗口是最后一个窗口,则退出vim
let Tlist_Use_SingClick=1			"单击跳转

"打开关闭快捷键
nnoremap <silent> <F8> :TlistToggle<CR>




"********************************************************
"											NERD_Tree配置											"
"********************************************************

let NERDChristmasTree=1				"显示增强
let NERDTreeAutoCenter=1			"自动调整焦点
let NERDTreeMouseMode=2				"鼠标模式:目录单击,文件双击
let NERDTreeQuitOnOpen=1			"打开文件后自动关闭
let NERDTreeShowFiles=1				"显示文件
let NERDTreeShowHidden=1			"显示隐藏文件
let NERDTreeHightCursorline=1	"高亮显示当前文件或目录
let NERDTreeShowLineNumber=1	"显示行号
let NERDTreeWinPos='left'			"窗口位置
let NERDTreeWinSize=31				"窗口宽度
let NERDTreeMinimalUI=1				"不显示'Bookmarks' label 'Press ? for help'

"快捷键
nnoremap <silent> <F4> :NERDTreeToggle<CR>






"******************************************************
"										YouCompleteMe配置									"
"******************************************************

let mapleader = ","						"leader映射为逗号 ,

"配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0

"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1







"*****************************************************************
"														Syntastic配置												 "
"*****************************************************************


let g:Syntastic_check_on_open=1

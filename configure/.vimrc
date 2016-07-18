"========Setup for VIM=========="
let author="cowboycn"
let mail="wangqiyi007@gmail.com"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GLOBAL－－全局设置－－
"==显示模式
set showmode
"==显示行号
set number
"==状态栏显示光标所在位置的行和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
"==在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
"==语法高亮
syntax on
syntax enable
"＋配色方案-molokai murphy desert darkblue koehler elflord torte pablo delek morning
colorscheme molokai
""设置背景色
set background=dark
"字体间插入的像素行数目
set linespace=0
"总是显示状态行
set laststatus=2
set t_Co=256
"用空格代替制表符
set expandtab
"自动缩进,相同级(与上一行相同)
set autoindent
"自动缩进,下一级
set smartindent
"使用C/C++自动缩进方式
set cindent
"设置C/C++语言的具体缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     
"制表符为4统一缩进为4
set tabstop=4
set softtabstop=4
set shiftwidth=4
"用空格键来开关折叠
set foldenable
"设置代码折叠
set foldmethod=syntax
set foldlevel=100
set foldcolumn=5
"显示输入的命令
set showcmd
"共享剪贴板
set clipboard+=unnamed
"自动保存
set autowrite
"设置当文件被改动时自动载入
set autoread
"突出显示当前行
set cursorline
"设置魔术
set magic
"隐藏工具栏
""set guioptions-=T
"隐藏菜单栏
""set guioptions-=m
"所有模式下使用鼠标，还可以是n,v,i,c等
set mouse=n
"设置VIM窗口大小
""set lines=30 columns=100
"设置光标上下边界5行自动滚动
""set scrolloff=8
"设置历史记录
set history=1000
"Alt组合键不映射到菜单
set winaltkeys=no

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SEARCH－－搜索和匹配－－
"高亮显示匹配的括号
set showmatch
"搜索忽略大小写
set ignorecase
"搜索时，输入的词句的逐字符高亮
set incsearch
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FILETYPE－－文件类型设置－－
"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"帮助语言为中文
""set helplang=cn

"设置语言和文件编码
language messages zh_CN.utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,chinese

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO 取消vi一致性模式
set nocompatible
set showmatch

"智能补全
if v:version >=700
    set completeopt=longest,menu,preview
endif
"自动补全命令，使用菜单式匹配列表
set wildmenu

"＋自动完成括号和引号
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAP－－键盘绑定－－
"map <F2> :NERDTreeToggle<CR>
"map <F3> :TlistToggle<CR>
"map <F4> :cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
"imap <F2> <ESC>:NERDTreeToggle<CR>
"imap <F3> <ESC>::TlistToggle<CR>
"imap <F4> <ESC>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
"imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
"map <F6> :make clean<CR><CR><CR> " 按下F6，执行make clean 
"map <F7> :make<CR><CR><CR> :copen<CR><CR> " 按下F7，执行make编译程序，并打开quickfix窗口，显示编译信息
"map <F8> :!./audit_agent<CR> " 按下F8，执行指定程序
"map <F9> :cp<CR> " 按下F9，光标移到上一个错误所在的行
"map <F10> :cn<CR> " 按下F10，光标移到下一个错误所在的行
"imap <F6> <ESC>:make clean<CR><CR><CR> " 以上的映射是使上面的快捷键在插入模式下也能用
"imap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
"imap <F8> <ESC>:!./audit_agent<CR>
"imap <F9> <ESC>:cp<CR>
"imap <F10> <ESC>:cn<CR>

""set foldmethod=manual
""nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

map <F3> :WMToggle<CR>
""map <F3> :NERDTreeToggle<CR>
""map <F4> :TlistToggle<CR>
map <F5> :make clean<CR><CR><CR> " 按下F6，执行make clean
map <F6> :make<CR><CR><CR> :copen<CR><CR> " 按下F7，执行make编译程序，并打开quickfix窗口，显示编译信息
map <F7> :cp<CR> " 按下F8，光标移到上一个错误所在的行
map <F8> :cn<CR> " 按下F9，光标移到下一个错误所在的行
map <F9> :call CompileRun()<CR>
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
map <F12> :call Do_CsTag2()

imap <F3> <ESC>:WMToggle<CR>
""imap <F3> <ESC>:NERDTreeToggle<CR>
""imap <F4> <ESC>:TlistToggle<CR>
imap <F5> <ESC>:make clean<CR><CR><CR> " 按下F6，执行make clean -- QuickFix setting --
imap <F6> <ESC>:make<CR><CR><CR> :copen<CR><CR> " 按下F7，执行make编译程序
imap <F7> <ESC>:cp<CR> " 按下F8，光标移到上一个错误所在的行
imap <F8> <ESC>:cn<CR> " 按下F9，光标移到下一个错误所在的行
imap <F9> <ESC>:call CompileRun()<CR>
imap <F4> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F12> <ESC>:call Do_CsTag2()
""imap <F12> <ESC>:!./audit_agent
""imap <F12> <ESC>:!/usr/bin/python %



" PLUGIN--插件--

" NerdTree use-- <F2>  
let NERDTreeWinPos='right'  
let NERDTreeWinSize=31  
let NERDTreeChDirMode=1   
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"--ctags setting--
" 按下F5重新生成tag文件，并更新taglist
set tags=tags
set tags+=/usr/include/tags
set tags+=/usr/include/c++/tags

"-- Taglist setting --
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=0 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=1 "让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0
let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=0 
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_Use_SingleClick=1

"-- WinManager setting --
let g:winManagerWindowLayout='FileExplorer|TagList' " 设置我们要管理的插件
let g:persistentBehaviour=0 " 如果所有编辑文件都关闭了，退出vim
nmap wm :WMToggle<cr> 

" -- MiniBufferExplorer --
let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
let g:miniBufExplModSelTarget = 1    " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

"-- Cscope setting --
""map <F4> :cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
""imap <F4> <ESC>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR> " 将:cs find c等Cscope查找命令映射为<C-_>c等快捷键（按法是先按Ctrl+Shift+-, 然后很快再按下c）
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>
func Do_CsTag()
    if (executable('cscope')&& has("cscope"))
	    set csprg=/usr/bin/cscope        " 指定用来执行cscope的命令
        set csto=0                        " 设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
	    set cst                            " 同时搜索cscope数据库和标签文件
	    set cscopequickfix=s-,c-,d-,i-,t-,e-    " 使用QuickFix窗口来显示cscope查找结果
	    set nocsverb
	    if filereadable("cscope.out")    " 若当前目录下存在cscope数据库，添加该数据库到vim
		    cs add cscope.out
	    elseif $CSCOPE_DB != ""            " 否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
		    cs add $CSCOPE_DB
	    endif
	    set csverb
    endif
endfunc

func Do_CsTag2()
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' -o -name '*.cxx' -o -name '*.hxx'> cscope.files"
        else
            silent! execute "!dir /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -bq"
        
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunc

" OmniCpp
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au BufNewFile,BufRead,BufEnter *.cpp,*.h set omnifunc=omni#cpp#complete#Main
autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP 
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete  
"autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP 

" Powerline
let g:Powerline_symbols='unicode'

" SuperTab
let g:SuperTabRetainCompletionType="context"

" Winmanager-- <F10>
let g:winManagerWindowLayout='FileExplorer|TagList'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py,*.pyw exec ":call InsertHeaderTitle()"
autocmd BufNewFile, BufRead *.py, *.pyw setf python
autocmd BufNewFile * normal G
func InsertHeaderTitle()
    "创建源文件时向头部插入头部声明信息"
    "
""    echomsg filetype
            ""let author="cowboycn"
            ""let mail="wangqiyi007@gmail.com"
            if &filetype == 'python'
                 call setline(1, "\#!/usr/bin/env python")
                 call append(line("."), "\#-*- coding:utf-8 -*-")
                 call append(line(".")+1, "\###############################################################################")
                 call append(line(".")+2, "\# Created Time: ".strftime("%c"))
                 call append(line(".")+3, "\#    File Name: ".expand("%"))
                 call append(line(".")+4, printf("\#       Author: %s",g:author))
                 call append(line(".")+5, printf("\#         Mail: %s",g:mail))
                 call append(line(".")+6, "\#  Description:")
                 call append(line(".")+7, "\###############################################################################")
                 call append(line(".")+8, "")
            elseif &filetype == 'sh'
                 call setline(1,"\##################################")
                 call append(line("."), "\# File Name: ".expand("%"))
                 call append(line(".")+1, printf("\# Author: %s",g:author))
                 call append(line(".")+2, printf("\# mail: %s",g:mail))
                 call append(line(".")+3, "\# Created Time: ".strftime("%c"))
                 call append(line(".")+4, "\###################################")
                 call append(line(".")+5, "\#!/bin/bash")
                 call append(line(".")+6, "")
            else
                 call setline(1,"/**********************")
                 call append(line("."), "    > File Name: ".expand("%"))
                 call append(line(".")+1, printf("    > Author: %s",g:author))
                 call append(line(".")+2, printf("    > Mail: %s",g:mail))
                 call append(line(".")+3, "    > Created Time: ".strftime("%c"))
                 call append(line(".")+4, " ****************************/")
                 call append(line(".")+5, "")
            endif
            if &filetype == 'cpp'
                 call append(line(".")+6, "#include <iostream>")
                 call append(line(".")+7, "using namespace std;")
                 call append(line(".")+8, "")
            endif
            if &filetype == 'c'
                 call append(line(".")+6, "#include <stdio.h>")
                 call append(line(".")+7, "")
            endif
endfunc
"定义Run函数
func CompileRun()
    exec "w"
    ""exec "!./audit_agent"
    ""return
    "C程序
    if &filetype == 'c'
        exec "!gcc % -g -o %< -lpthread"
        exec "!.\/%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<" 
        exec "!.\/%<"
    elseif &filetype == 'python'
        exec ":!/usr/bin/python %"
    elseif &filetype == 'sh'
        exec "!.\/%"
    endif
endfunc
        
"定义Debug函数，用来调试小程序
func Debug()
    exec "w"
    ""C程序
    if &filetype == 'c'
        exec "!rm %<"
        exec "!gcc % -g -o %<"
        exec "!gdb %<"
    elseif &filetype == 'cpp'
        exec "!rm %<"
        exec "!g++ % -g -o %<"
        exec "!gdb %<"
        "Java程序
        elseif &filetype == 'java'
        exec "!rm %<.class"
        exec "!javac %"
        exec "!jdb %<"
    endif
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
" original repos on github

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle "Lokaltog/vim-powerline"
Bundle 'tpope/vim-rails.git'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

" Python
Bundle "gg/python.vim"
""Bundle "vim-scripts/Python-mode-klen"

" 插件
Bundle "ZenCoding.vim"
Bundle "taglist.vim"
Bundle 'scrooloose/nerdtree'

Bundle "OmniCppComplete"
Bundle "winmanager"
Bundle "SuperTab"
""Bundle "TabBar"

""filetype indent plugin on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

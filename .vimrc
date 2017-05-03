set nocompatible " 关闭 vi 兼容模式
filetype off                  " required
:let mapleader=","
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" **************************** 插件列表 **************************

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ------------------------------ 公共插件 -------------------------------

" 处理git信息
Plugin 'https://github.com/tpope/vim-fugitive.git'

" 显示 git diff
Plugin 'airblade/vim-gitgutter'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'https://github.com/Raimondi/delimitMate.git'

" 缩进线
Plugin 'Yggdroot/indentLine'

" 自动对齐
Plugin 'junegunn/vim-easy-align'

" vim-autoformat 代码格式化, js 需要配合 npm install -g js-beautify
Plugin 'Chiel92/vim-autoformat'

" Vim sugar for the UNIX shell commands that need it the most
Plugin 'https://github.com/tpope/vim-eunuch.git'

" vim-session
Plugin 'https://github.com/xolox/vim-session.git'
Plugin 'https://github.com/xolox/vim-misc.git'

" vim-shell : Improved integration between Vim and its environment (fullscreen, open URL, background command execution)
Plugin 'https://github.com/xolox/vim-shell.git'

" ctrlp : Fuzzy file, buffer, mru, tag, etc finder
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'

" ultisnips
Plugin 'https://github.com/SirVer/ultisnips.git'
Plugin 'honza/vim-snippets'

" 目录
Plugin 'git://github.com/scrooloose/nerdtree.git'

" mhinz/vim-grepper
Plugin 'mhinz/vim-grepper'

"同一编码风格
Plugin 'editorconfig/editorconfig-vim'

"vim-airline状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"插入符号
Plugin 'git://github.com/tpope/vim-surround.git'

"vim-easymotion 快速移动
Plugin 'git://github.com/easymotion/vim-easymotion.git'

"多行编辑 vim-multiple-cursors"
Plugin 'git://github.com/terryma/vim-multiple-cursors.git'

" YCM
Plugin 'Valloric/YouCompleteMe'

" Retro groove color scheme for Vim
Plugin 'https://github.com/morhetz/gruvbox.git'

"注释 tcomment"
Plugin 'git://github.com/tomtom/tcomment_vim.git'

"Markdown 插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" *.md实时预览插件 需要sudo npm -g install instant-markdown-d
Plugin 'suan/vim-instant-markdown'


" --------------------------------------- 前端插件 ---------------------------------

" tern_for_vim : Don't forget run 'npm install' in tern_for_vim directory
Plugin 'https://github.com/ternjs/tern_for_vim.git'

" html 触发补全
Plugin 'mattn/emmet-vim'

"语法检查
Plugin 'https://github.com/vim-syntastic/syntastic.git'

"ack.vim查找插件"
Plugin 'https://github.com/mileszs/ack.vim.git'

"html5.vim
Plugin 'othree/html5.vim'

"matchit
Plugin 'vim-scripts/matchit.zip'

"matchTagAlways 高亮匹配标签
Plugin 'git://github.com/Valloric/MatchTagAlways.git'

"js高亮 JavaScript Syntax
Plugin 'othree/yajs.vim'

" js-libraries-syntax
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'

" es.next.syntax
Plugin 'https://github.com/othree/es.next.syntax.vim.git'

" vim syntax for LESS
Plugin 'groenewege/vim-less'

" Highlight colors in css files,注意作者是ap,速度快
" A very fast color keyword highlighter for Vim with context-sensitive support for many language syntaxes
Plugin 'https://github.com/ap/vim-css-color.git'

" CSS3 syntax (and syntax defined in some foreign specifications) support for Vim’s built-in syntax/css.vim
Plugin 'https://github.com/hail2u/vim-css3-syntax.git'


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

" ******************************** 插件配置 ********************************

" ------- vim-session
let g:session_autosave = 'yes'
nnoremap <leader>os :OpenSession<space>
nnoremap <leader>ss :SaveSession<space>

" ------- autoformat
noremap <leader>a :Autoformat<CR>

" ------- UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ------- YCM
let g:ycm_key_list_select_completion = ['<Down>']

" ------- delimitMate
let delimitMate_autoclose = 1
let delimitMate_matchpairs = "(:),[:],{:},<:>"
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
let delimitMate_balance_matchpairs = 1

" ------- ctrlp
nnoremap <leader>f :CtrlP<cr> " 用文件搜索模式打开CtrlP
nnoremap <leader>m :CtrlPMRU<cr>  " 用最近最多使用模式打开CtrlP.
nnoremap <leader>b :CtrlPBuffer<cr>  " 用缓冲区搜索模式打开CtrlP.
let g:ctrlp_prompt_mappings = {
\  'PrtDeleteEnt()': ['<F2>']
\}

" -------- indentline
let g:indentLine_char = '│'

" -------- syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = ['eslint']
" 使用项目中的eslint
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:formatdef_eslint_local = 0
let g:syntastic_shell = "/bin/zsh"

" -------airline
set laststatus=2 " 在下方显示bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamecollapse = 1
" 关闭tabline功能
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
" 仅显示文件名
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
		let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 删除buffer后更新airline See: https://github.com/vim-airline/vim-airline/issues/399
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

" ------- airline theme
let g:airline_theme='papercolor' " papercolor/luna/cobalt2
nnoremap <leader>d :bd<cr>

" ------- gruvbox theme
let g:gruvbox_contrast_dark= 'hard'

" ------ ack
" cnoreabbrev Ack Ack!
map <F4> :Ack!<Space>-i<Space>

" --------- easy-motion
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
" 跨窗口查找(仅支持Normal mode)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
"n-character search motion 查找及高亮
nmap s <Plug>(easymotion-overwin-f2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" -------- javascript-libaries-syntax
let g:used_javascript_libs = 'react'


" *************************** 插件配置结束 ***************************

" *************************** vim 公共配置 ***************************
" Enables code folding based on our syntax file.
set foldmethod=syntax
" indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
" eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
" start：要想删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start
" set regexpengine=1
set backupcopy=yes
set t_Co=256
syntax enable
syntax on " 自动语法高亮
" set background=light
set background=dark
" colorscheme solarized
colorscheme gruvbox
let g:solarized_termcolors=256
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=2 " 设定 tab 长度为 4
" 高亮显示匹配的括号
set showmatch
" 自动格式化
set formatoptions=tcrqn
" 所有的文件都不会自动添加注释符号
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set lines=35 columns=120 "设置窗口大小
" history文件中需要记录的行数
set history=1000
"智能对齐方式
" set smartindent
" set autoindent
"set cindent
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示
set foldenable " 允许折叠
set foldmethod=manual " 手动折叠
" set foldcolumn=2
"关闭闪屏提醒
set vb t_vb=
set novisualbell
"等待输入时间
" :set timeoutlen=1500
"搜索忽略大小写
set ignorecase
nnoremap <silent> <F3> :NERDTreeToggle <CR>
:inoremap <c-d> <esc>cc
"快速编辑.vimrc文件
:nnoremap <leader>ev :e $MYVIMRC<cr>
"重读.vimrc文件
:nnoremap <leader>sv :source $MYVIMRC<cr>
" :inoremap =  <space>=<space>
:inoremap ==  <space>==<space>
:inoremap !=  <space>!=<space>
:inoremap !==   <space>!==<space>
:imap <c-e> <c-y>,
"快速返回到普通模式
:inoremap jk <esc>
"注意:不要给<Esc>(starting with <Esc> 也不可以)键设置映射，否则将会使方向键在插入模式下失效(打印OA,OB,OC,OD).
":inoremap <esc> <nop>
"快速在尾部添加分号
:inoremap ;; <esc>A;<cr>
:inoremap ,, <esc>A,<cr>
:nnoremap <leader>/ A<space><space>//
"插入模式下快速在下方开辟新行"
:inoremap <c-j> <esc>o
"插入模式下快速在上方开辟新行"
:inoremap <c-k> <esc>O
" 快速换行缩进
" :inoremap <c-c> <cr><esc>O
" 光标移植末尾
:inoremap <c-l> <esc>A
:inoremap <c-h> <esc>I
"左右窗口转换"
:nnoremap <c-h> <c-w><Left>
:nnoremap <c-l> <c-w><Right>
:nnoremap <c-j> <c-w><Down>
:nnoremap <c-k> <c-w><Up>
"快速打开插件列表"
:nnoremap <leader>pl :PluginList<cr>
"快速安装插件"
:nnoremap <leader>pi :PluginInstall<cr>
" 清除无效插件
:nnoremap <leader>pc :PluginClean<cr>

"快速退出"
:nnoremap <leader>q :q<cr>
"快速保存"
:nnoremap <leader>w :w<cr>
"快速增加宽度"
:nnoremap <leader>wa 10<c-w>>
"快速减小宽度"
:nnoremap <leader>wd 10<c-w><

"检测 <Esc> 键在插入模式下是否有映射
"verbose imap <Esc>

" ****************************** vim公共配置结束 ***********************

" ******************************* 自建脚本 *****************************

"用tmux打开vim时，颜色不变
if exists('$TMUX')
		set term=screen-256color
endif

" ----------------- 创建文件头 ------------------

autocmd bufnewfile {*.js,*.less,*.css,*.scss} so ~/.vim/header/head.txt
autocmd bufnewfile {*.js,*.less,*.css,*.scss} exe "1," . 7 ."g/File Name:.*/s//File Name: " .expand("%")
autocmd bufnewfile {*.js,*.less,*.css,*.scss} exe "1," . 7 ."g/Creation Date:.*/s//Creation Date: " .strftime("%Y-%m-%d %H:%M:%S")
autocmd bufwritepre,filewritepre {*.js,*.less,*.css,*.scss} execute "normal ma" 
autocmd bufwritepre,filewritepre {*.js,*.less,*.css,*.scss} exe "1," . 7 ."g/Last Modified:.*/s//Last Modified: " .strftime("%Y-%m-%d %H:%M:%S")
autocmd bufwritepre,filewritepost {*.js,*.less,*.css,*.scss} execute "normal `a|zz"

" --------------------- 改变vim不同模式下，cursor的形状  -----------------------
"
"gnome>=3.16
" if has("autocmd")
"   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
"   au InsertEnter,InsertChange *
"     \ if v:insertmode == 'i' |
"     \   silent execute '!echo -ne "\e[5 q"' | redraw! |
"     \ elseif v:insertmode == 'r' |
"     \   silent execute '!echo -ne "\e[3 q"' | redraw! |
"     \ endif
"   au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
" endif
"

"不同模式下光标颜色不同

" ----------------------- NERDTress File highlighting  --------------------------
"
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
		exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
		exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" -------------------- 自动加载外部文件变化 -------------------------
"
" If you are using a console version of Vim, or dealing
" with a file that changes externally (e.g. a web server log)
" then Vim does not always check to see if the file has been changed.
" The GUI version of Vim will check more often (for example on Focus change),
" and prompt you if you want to reload the file.
"
" There can be cases where you can be working away, and Vim does not
" realize the file has changed. This command will force Vim to check
" more often.
"
" Calling this command sets up autocommands that check to see if the
" current buffer has been modified outside of vim (using checktime)
" and, if it has, reload it for you.
"
" This check is done whenever any of the following events are triggered:
" * BufEnter
" * CursorMoved
" * CursorMovedI
" * CursorHold
" * CursorHoldI
"
" In other words, this check occurs whenever you enter a buffer, move the cursor,
" or just wait without doing anything for 'updatetime' milliseconds.
"
" Normally it will ask you if you want to load the file, even if you haven't made
" any changes in vim. This can get annoying, however, if you frequently need to reload
" the file, so if you would rather have it to reload the buffer *without*
" prompting you, add a bang (!) after the command (WatchForChanges!).
" This will set the autoread option for that buffer in addition to setting up the
" autocommands.
"
" If you want to turn *off* watching for the buffer, just call the command again while
" in the same buffer. Each time you call the command it will toggle between on and off.
"
" WatchForChanges sets autocommands that are triggered while in *any* buffer.
" If you want vim to only check for changes to that buffer while editing the buffer
" that is being watched, use WatchForChangesWhileInThisBuffer instead.
"
command! -bang WatchForChanges                  :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0})
command! -bang WatchForChangesWhileInThisBuffer :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0, 'while_in_this_buffer_only': 1})
command! -bang WatchForChangesAllFile           :call WatchForChanges('*', {'toggle': 1, 'autoread': <bang>0})
" WatchForChanges function
"
" This is used by the WatchForChanges* commands, but it can also be
" useful to call this from scripts. For example, if your script executes a
" long-running process, you can have your script run that long-running process
" in the background so that you can continue editing other files, redirects its
" output to a file, and open the file in another buffer that keeps reloading itself
" as more output from the long-running command becomes available.
"
" Arguments:
" * bufname: The name of the buffer/file to watch for changes.
"     Use '*' to watch all files.
" * options (optional): A Dict object with any of the following keys:
"   * autoread: If set to 1, causes autoread option to be turned on for the buffer in
"     addition to setting up the autocommands.
"   * toggle: If set to 1, causes this behavior to toggle between on and off.
"     Mostly useful for mappings and commands. In scripts, you probably want to
"     explicitly enable or disable it.
"   * disable: If set to 1, turns off this behavior (removes the autocommand group).
"   * while_in_this_buffer_only: If set to 0 (default), the events will be triggered no matter which
"     buffer you are editing. (Only the specified buffer will be checked for changes,
"     though, still.) If set to 1, the events will only be triggered while
"     editing the specified buffer.
"   * more_events: If set to 1 (the default), creates autocommands for the events
"     listed above. Set to 0 to not create autocommands for CursorMoved, CursorMovedI,
"     (Presumably, having too much going on for those events could slow things down,
"     since they are triggered so frequently...)
function! WatchForChanges(bufname, ...)
		" Figure out which options are in effect
		if a:bufname == '*'
				let id = 'WatchForChanges'.'AnyBuffer'
				" If you try to do checktime *, you'll get E93: More than one match for * is given
				let bufspec = ''
		else
				if bufnr(a:bufname) == -1
						echoerr "Buffer " . a:bufname . " doesn't exist"
						return
				end
				let id = 'WatchForChanges'.bufnr(a:bufname)
				let bufspec = a:bufname
		end
		if len(a:000) == 0
				let options = {}
		else
				if type(a:1) == type({})
						let options = a:1
				else
						echoerr "Argument must be a Dict"
				end
		end
		let autoread    = has_key(options, 'autoread')    ? options['autoread']    : 0
		let toggle      = has_key(options, 'toggle')      ? options['toggle']      : 0
		let disable     = has_key(options, 'disable')     ? options['disable']     : 0
		let more_events = has_key(options, 'more_events') ? options['more_events'] : 1
		let while_in_this_buffer_only = has_key(options, 'while_in_this_buffer_only') ? options['while_in_this_buffer_only'] : 0
		if while_in_this_buffer_only
				let event_bufspec = a:bufname
		else
				let event_bufspec = '*'
		end
		let reg_saved = @"
		"let autoread_saved = &autoread
		let msg = "\n"
		" Check to see if the autocommand already exists
		redir @"
		silent! exec 'au '.id
		redir END
		let l:defined = (@" !~ 'E216: No such group or event:')
		" If not yet defined...
		if !l:defined
				if l:autoread
						let msg = msg . 'Autoread enabled - '
						if a:bufname == '*'
								set autoread
						else
								setlocal autoread
						end
				end
				silent! exec 'augroup '.id
				if a:bufname != '*'
						"exec "au BufDelete    ".a:bufname . " :silent! au! ".id . " | silent! augroup! ".id
						"exec "au BufDelete    ".a:bufname . " :echomsg 'Removing autocommands for ".id."' | au! ".id . " | augroup! ".id
						exec "au BufDelete    ".a:bufname . " execute 'au! ".id."' | execute 'augroup! ".id."'"
				end
				exec "au BufEnter     ".event_bufspec . " :checktime ".bufspec
				exec "au CursorHold   ".event_bufspec . " :checktime ".bufspec
				exec "au CursorHoldI  ".event_bufspec . " :checktime ".bufspec
				" The following events might slow things down so we provide a way to disable them...
				" vim docs warn:
				"   Careful: Don't do anything that the user does
				"   not expect or that is slow.
				if more_events
						exec "au CursorMoved  ".event_bufspec . " :checktime ".bufspec
						exec "au CursorMovedI ".event_bufspec . " :checktime ".bufspec
				end
		augroup END
		let msg = msg . 'Now watching ' . bufspec . ' for external updates...'
end
" If they want to disable it, or it is defined and they want to toggle it,
if l:disable || (l:toggle && l:defined)
		if l:autoread
				let msg = msg . 'Autoread disabled - '
				if a:bufname == '*'
						set noautoread
				else
						setlocal noautoread
				end
		end
		" Using an autogroup allows us to remove it easily with the following
		" command. If we do not use an autogroup, we cannot remove this
		" single :checktime command
		" augroup! checkforupdates
		silent! exec 'au! '.id
		silent! exec 'augroup! '.id
		let msg = msg . 'No longer watching ' . bufspec . ' for external updates.'
elseif l:defined
		let msg = msg . 'Already watching ' . bufspec . ' for external updates'
end
echo msg
let @"=reg_saved
endfunction

let autoreadargs={'autoread':1}
execute WatchForChanges("*",autoreadargs)




"gvim隐藏菜单栏
set guioptions-=m " 隐藏菜单栏
set guioptions-=T " 隐藏工具栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条
"设置字体
set guifont=Monaco\ for\ Powerline:h17
"快速编辑.gvimrc文件
:nnoremap <leader>eev :e $MYGVIMRC<cr>
"重读.gvimrc文件
:nnoremap <leader>ssv :source $MYGVIMRC<cr>


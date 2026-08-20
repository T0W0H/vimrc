set number relativenumber
set cursorline
set clipboard=unnamedplus
set mouse=a

" 文件内 / 搜索时显示匹配位置 [当前/总数]（需 Vim 8.1.1278+）
set shortmess-=S

" " 光标行用淡背景高亮，去掉下划线（避免和代码里的 _ 混淆）
" hi CursorLine gui=NONE guibg=#3a3a3a cterm=NONE ctermbg=236

" 保持当前行背景透明，去除下划线
hi clear CursorLine
hi CursorLine cterm=NONE gui=NONE guibg=NONE ctermbg=NONE

" 高亮当前行的行号（例如加粗黄色）
hi CursorLineNr cterm=bold ctermfg=Yellow gui=bold guifg=Yellow

" ==================================================
" 强制 Vim 背景透明，使其完美融入终端背景
" ==================================================
" 清除普通文本背景
hi Normal ctermbg=NONE guibg=NONE
" 清除文件末尾（~符号）的背景
" hi NonText ctermbg=NONE guibg=NONE
" hi EndOfBuffer ctermbg=NONE guibg=NONE
" 清除行号列的背景
" hi LineNr ctermbg=NONE guibg=NONE
" hi CursorLineNr ctermbg=NONE guibg=NONE
" 清除左侧标志列（如 GitGutter 等）的背景
" hi SignColumn ctermbg=NONE guibg=NONE
" 清除垂直分割线的背景
" hi VertSplit ctermbg=NONE guibg=NONE



let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'cpp':    ['clang-format'],
\   'python': ['autopep8'],
\   'rust':   ['rustfmt'],
\}


" 插入模式下可以使用jk来退出
inoremap jk <esc>

" 交换 j/k 和 gj/gk 的功能
" 但在使用数字前缀 (如 5j, 3k) 时，保留物理移动的特性
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <expr> gj v:count ? 'gj' : 'j'
nnoremap <expr> gk v:count ? 'gk' : 'k'

vnoremap <expr> j v:count ? 'j' : 'gj'
vnoremap <expr> k v:count ? 'k' : 'gk'
vnoremap <expr> gj v:count ? 'gj' : 'j'
vnoremap <expr> gk v:count ? 'gk' : 'k'


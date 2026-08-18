set relativenumber
set cursorline
set clipboard=unnamedplus
set mouse=a

" 光标行用淡背景高亮，去掉下划线（避免和代码里的 _ 混淆）
hi CursorLine gui=NONE guibg=#3a3a3a cterm=NONE ctermbg=236

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'cpp':    ['clang-format'],
\   'python': ['autopep8'],
\   'rust':   ['rustfmt'],
\}


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


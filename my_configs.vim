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

![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# 终极 vimrc 配置

在过去的 10 年里，我一直在使用并调整 Vim。这个配置是终极的 vimrc（或者至少是我的版本）。

它包含两个版本：

* **基础版 (The Basic)**：如果你只需要小巧的配置，只需将 [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) 复制到你的 `~/.vimrc` 文件中，你就会拥有一个很好的基础设置。
* **完整版 (The Awesome)**：包含大量有用的插件、配色方案和配置。

当然，我推荐使用完整版。


## 如何安装完整版 (Awesome version)？
### 仅为当前用户安装
完整版包含了许多出色的插件、配置和配色方案，让 Vim 变得更好用。要安装它，只需在终端中执行以下操作：

	git clone --depth=1 https://github.com/T0W0H/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
	
### 为多用户安装
要为多个用户安装，需要将该仓库克隆到一个所有目标用户都能访问的位置。

	git clone --depth=1 https://github.com/amix/vimrc.git /opt/vim_runtime
	sh /opt/vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
	# 要为所有拥有家目录的用户安装（注意不会包含 root 用户）
	sh /opt/vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
	
当然，`/opt/vim_runtime` 可以是任何目录，只要指定的所有用户都具有读取权限即可。

## 字体

我推荐使用 [IBM Plex Mono 字体](https://github.com/IBM/plex)（这是一款开源且非常棒的字体，能让你的代码看起来很漂亮）。Awesome vimrc 已经配置好尝试使用它了。

Awesome 尝试使用的其他一些字体包括：

* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)

## 如何安装基础版 (Basic version)？

基础版只有一个文件且没有插件。只需复制 [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) 并将其粘贴到你的 vimrc 中。

基础版非常适合安装在那些你不需要很多插件且编辑工作不多的远程服务器上。

	git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## 如何在 Windows 上安装？

使用 [gitforwindows](http://gitforwindows.org/) 检出代码仓库，然后运行上述安装命令。不需要任何特殊说明 ;-)


## 如何在 Linux 上安装？

如果你的 vim 别名是 `vi` 而不是 `vim`，请确保为其设置别名：`alias vi=vim`。或者，通过 `apt-get install vim` 安装。


## 如何更新到最新版本？

直接执行 git rebase 即可！


    cd ~/.vim_runtime
    git reset --hard
    git clean -d --force
    git pull --rebase
    python update_plugins.py  # 如果找不到 python，请使用 python3

## 一些截图

编辑 Python 文件时的颜色：

![Screenshot 1](https://dnp4pehkvoo6n.cloudfront.net/07583008e4da885801657e8781777844/as/Python%20editing.png)

在终端窗口中的 [NERD Tree](https://github.com/preservim/nerdtree) 插件：
![Screenshot 3](https://dnp4pehkvoo6n.cloudfront.net/ae719203166585d64728f28398f4b1b7/as/Terminal%20usage.png)

使用 [goyo.vim](https://github.com/junegunn/goyo.vim) 和 [vim-zenroom2](https://github.com/amix/vim-zenroom2) 的无干扰模式 (Distraction free mode)：
![Screenshot 4](https://dnp4pehkvoo6n.cloudfront.net/f0dcc4c9739148c56cbf8285a910ac41/as/Zen%20mode.png)


## 包含的插件

我建议阅读这些插件的文档以更好地理解它们。每个插件都能极大地提升 Vim 的使用体验！

* [ack.vim](https://github.com/mileszs/ack.vim)：适用于 `the_silver_searcher` (ag) 或 ack 的 Vim 插件 —— 一个极其快速的 grep 工具
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip)：快速轻松地在缓冲区之间切换。可以通过 `<leader+o>` 快捷键打开
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)：模糊查找文件、缓冲区、最近使用文件 (mru) 和标签。快捷键被映射为 `<Ctrl+F>`
* [goyo.vim](https://github.com/junegunn/goyo.vim) 和 [vim-zenroom2](https://github.com/amix/vim-zenroom2)：
* [lightline.vim](https://github.com/itchyny/lightline.vim)：一个轻量级且可配置的 Vim 状态栏/标签栏
* [NERD Tree](https://github.com/preservim/nerdtree)：Vim 的树状文件浏览器插件
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim)：按下 `gf` 时打开光标下的文件
* [pathogen.vim](https://github.com/tpope/vim-pathogen)：管理你的 vim runtimepath
* [snipmate.vim](https://github.com/garbas/vim-snipmate)：旨在通过简洁的 vim 脚本实现 TextMate 的代码片段功能
* [ale](https://github.com/dense-analysis/ale)：Vim 的语法和 lint 检查工具（ALE 需要 NeoVim >= 0.2.0 或带有 +timers +job +channel 特性的 Vim 8）
* [vim-commentary](https://github.com/tpope/vim-commentary)：快速注释代码。使用 `gcc` 注释单行（支持数字前缀计数），`gc` 注释动作目标，`gcu` 取消相邻多行的注释
* [vim-expand-region](https://github.com/terryma/vim-expand-region)：允许使用相同的快捷键组合逐步扩大选中的文本区域
* [vim-fugitive](https://github.com/tpope/vim-fugitive)：一个非常棒的 Git 封装，好用到不合法
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)：定义了一个新的文本对象，代表同一缩进级别的代码行。对 python/vim 脚本非常有用
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)：为 Vim 提供类似 Sublime Text 风格的多光标选择，CTRL+N 被重新映射到了 CTRL+S（因为 YankRing 插件）
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack)：维护以前 yank（复制）、change（修改）和 delete（删除）的历史记录
* [vim-zenroom2](https://github.com/amix/vim-zenroom2)：消除一切混乱，只专注于最核心的内容。类似于 iA Writer 或 Write Room
* [gist-vim](https://github.com/mattn/gist-vim)：使用 `:Gist` 命令轻松地从 Vim 创建 gist
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)：在 Vim 中可视化显示缩进级别的插件
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)：EditorConfig 帮助多个开发人员在使用各种不同的编辑器和 IDE 协作同一个项目时，保持一致的编码风格
* [copilot.vim](https://github.com/github/copilot.vim)：GitHub Copilot 的插件（AI 自动补全神器 😅）


## 包含的配色方案

输入 `:colorscheme <Tab>` 即时试用配色方案，
或者将命令添加到 `~/.vim_runtime/my_configs.vim` 中（请参考[下文](#如何加入自己的配置)），
例如 `colorscheme pyte`。

* [peaksea](https://github.com/vim-scripts/peaksea)：默认
* [dracula](https://github.com/dracula/vim)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## 包含的模式 (Modes)

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim)：nginx 配置文件的语法高亮
* [rust.vim](https://github.com/rust-lang/rust.vim)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [typescript-vim](https://github.com/leafgarland/typescript-vim)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent)


## 如何加入自己的配置？

安装完成后，
创建一个空的 `~/.vim_runtime/my_configs.vim` 文件以进行进一步的自定义配置。
此文件的语法与 `vimrc` 语法一致，
可根据需要添加类似 `set number` 的 `vimrc` 行。

例如，我的 `my_configs.vim` 文件如下所示：

	~/.vim_runtime > cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

你还可以安装自己的插件，例如，通过 pathogen 安装 [vim-rails](https://github.com/tpope/vim-rails)：

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git my_plugins/vim-rails

你也可以在不使用任何插件管理器的情况下安装插件（需要 Vim 8+）：

* 创建 pack 插件目录：\
`mkdir -p ~/.vim_runtime/pack/plugins/start`
* 将你想要的插件克隆到该目录中，例如：\
`git clone --depth=1 git://github.com/maxmellon/vim-jsx-pretty  ~/.vim_runtime/pack/plugins/start/vim-jsx-pretty`


## 快捷键映射 (Key Mappings)

[leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) 键是 `空格键`，所以当你看到 `<leader>` 时，它的意思就是 `空格键`。


### 普通模式 (Normal mode) 映射

快速保存缓冲区 (`<leader>w`)：

```vim
nmap <leader>w :w!<cr>
```

~~将 `<Space>` 映射为 `/`（搜索）， `<Ctrl>+<Space>` 映射为 `?`（向后搜索）：
```vim	
map <space> /
map <C-space> ?
```
~~

按下 `<leader><cr>` 取消高亮：

```vim
map <silent> <leader><cr> :noh<cr>
```
在窗口之间巧妙地移动 (`<ctrl>j` 等)：
```vim	
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```
关闭当前缓冲区 (`<leader>bd` 和 `<leader>ba`)：
```vim	
" 关闭当前缓冲区
map <leader>bd :Bclose<cr>

" 关闭所有缓冲区
map <leader>ba :1,1000 bd!<cr>
```	
用于管理标签页的实用映射：
```vim	
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" 使用当前缓冲区的路径打开新标签页
" 在编辑同目录下的文件时超级有用
map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/
```	
将当前工作目录 [CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) 切换到当前打开缓冲区的目录：
```vim	
map <leader>cd :cd %:p:h<cr>:pwd<cr>
```	
打开 `ack.vim` 进行快速搜索：
```vim	
map <leader>g :Ack 
```
快速打开用于涂鸦的缓冲区：
```vim	
map <leader>q :e ~/buffer<cr>
```
切换粘贴模式 (paste mode) 的开启和关闭：
```vim	
map <leader>pp :setlocal paste!<cr>
```

### 可视模式 (Visual mode) 映射

在可视模式下按下 `*` 或 `#` 将搜索当前选中的内容：
```vim
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
```
按下 `gv` 时，使用 `Ack.vim` 搜索选中的文本：
```vim
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
```
按下 `<leader>r` 时，可以搜索并替换选中的文本：
```vim
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
```
用圆括号/方括号等包围可视模式选中的部分：
```vim
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>
```

### 插入模式 (Insert mode) 映射

快速插入圆括号/方括号等：
```vim
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i
```
插入当前日期和时间（对时间戳很有用）：
```vim
iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
```

### 命令行模式 (Command line) 映射

在命令行上浏览时 `$q` 超级好用。它会删除直到最后一个斜杠之前的所有内容：
```vim
cno $q <C-\>eDeleteTillSlash()<cr>
```
用于命令行的类似 Bash 的按键：
```vim
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
```

以 sudo 权限写入文件（仅在 Unix 上有效）。当你打开了一个文件但没有权限保存修改时超级有用。[Vim 提示](http://vim.wikia.com/wiki/Su-write)：

    :W 

### 插件相关的映射

打开 [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) 来查看和管理当前的缓冲区 (`<leader>o`)：
```vim
map <leader>o :BufExplorer<cr>
```
打开 [ctrlp.vim](https://github.com/kien/ctrlp.vim) 插件快速查找文件或缓冲区 (`<leader>j` 或 `<ctrl>f`)：
```vim
" 快速在当前工作目录 (CWD) 查找并打开文件
let g:ctrlp_map = '<C-f>'

" 快速查找并打开最近打开的文件
map <leader>f :MRU<CR>

" 快速查找并打开缓冲区
map <leader>b :CtrlPBuffer<cr>
```
[NERD Tree](https://github.com/preservim/nerdtree) 映射：
```vim
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
```
[goyo.vim](https://github.com/junegunn/goyo.vim) 和 [vim-zenroom2](https://github.com/amix/vim-zenroom2) 让你一次只专注于一件事。它去除了所有干扰并将内容居中。在编辑 Markdown、reStructuredText 和文本文件时，它有特殊的外观。它只有一个快捷键映射。 (`<leader>z`)
```vim
map <leader>z :Goyo<cr>
```
用于同时管理多个光标的 [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) 映射：
```vim
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
```
用于管理复制环 (剪贴板) 的 [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack) 映射：
```vim
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
```
轻松查找并打开文件、缓冲区等的 [ctrl-p](https://github.com/ctrlpvim/ctrlp.vim) 映射：
```vim
let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>
map <C-b> :CtrlPBuffer<cr>
```

通过代码片段进行自动补全的 [vim-snipmate](https://github.com/garbas/vim-snipmate) 映射：
```vim
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>
```
轻松在字符串周围添加 `_()` gettext 注解的 [vim-surround](https://github.com/tpope/vim-surround) 映射：
```vim
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
```
[ale](https://github.com/dense-analysis/ale) 轻松跳转到下一个 Ale 语法/lint 错误：
```vim
nmap <silent> <leader>a <Plug>(ale_next_wrap)
```
[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) 默认切换插件状态的映射是 (`<leader>ig`)

    你还可以在 Vim 内部使用以下命令：
    :IndentGuidesEnable
    :IndentGuidesDisable
    :IndentGuidesToggle

[vim-fugitive](https://github.com/tpope/vim-fugitive) 将 Git 仓库当前行的链接复制到剪贴板：
```vim
nnoremap <leader>v :.GBrowse!<CR>
xnoremap <leader>v :'<'>GBrowse!<CR>
```

### 拼写检查
按下 `<leader>ss` 将开启或关闭拼写检查：
```vim
map <leader>ss :setlocal spell!<cr>
```
使用 `<leader>` 代替特殊字符的快捷键：
```vim
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
```
### 运行代码
要直接在 vim 中运行代码，按下 `F5`。当前打开的代码将被执行，无需输入任何内容。

可用于执行使用 C、C++、Java、Python、Go、Octave、Bash 脚本和 HTML 编写的代码。若要编辑代码执行的方式，请在 `~/.vim_runtime/vimrcs/extended.vim` 文件中进行修改。

### Cope
如果你不确定 cope 是什么，查询 `:help cope`。它非常有用！

当你使用 `Ack.vim` 进行搜索时，通过以下操作在 cope 中显示你的结果：
`<leader>cc`

前往下一个搜索结果：
`<leader>n`

前往上一个搜索结果：
`<leader>p`

Cope 映射：
```vim
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>
```

## 如何卸载
只需执行以下操作：
* 删除 `~/.vim_runtime` 目录
* 删除你的 `~/.vimrc` 文件中任何引用 `.vim_runtime` 的行


## 正在寻找远程优先的工作？

维护这个 Vim 配置并不是我的本职工作。平时，我是 [Doist](https://doist.com/) 的创始人/CEO。你可以加入我们，在享受平衡生活的同时（在世界各地均可 🌍🌎🌏），帮助我们打造未来的办公环境。

附言：不必非得会用 Vim 😄

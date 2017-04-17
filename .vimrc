syntax on

" Configuration section of vim-plug
filetype off  " required!

call plug#begin('~/.config/nvim/plugged')

" My Bundles here:
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim', { 'for': ['eelixir', 'eruby', 'html'] }
Plug 'mattn/webapi-vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neomake/neomake'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plugins for Elixir
Plug 'elixir-lang/vim-elixir'

"Plugins for ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

"colorscheme gruvbox
Plug 'morhetz/gruvbox'

call plug#end()

" set color theme
set background=dark
colorscheme gruvbox

"Check syntastic by neomake
"autocmd BufWritePost * Neomake
"autocmd BufEnter * Neomake
"autocmd VimEnter * UpdateRemotePlugins .

filetype plugin indent on     " required!
 " End of vim-plug configuration

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Load custom-snippets for Emmet
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.config/nvim/autoload/emmet-snippets.json')), "\n"))
 

"common conf {{                 通用配置
set ai                          "自动缩进
set bs=2                        "在insert模式下用退格键删除
set showmatch                   "代码匹配
set laststatus=2                "总是显示状态行
set ruler                       "右下角显示当前光标位置
set expandtab                   "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=2
set tabstop=2
set cursorline                  "为光标所在行加下划线
set number                      "显示行号
set autoread                    "文件在Vim之外修改过，自动重新读入

set ignorecase                  "检索时忽略大小写
set fileencodings=utf-8,gbk     "使用utf-8或gbk打开文件
set encoding=utf-8
set hls                         "检索时高亮显示匹配项
set helplang=cn                 "帮助系统设置为中文
set foldmethod=indent           "代码折叠
set nofoldenable
set clipboard=unnamed           "复制文本至系统的剪贴板
set previewheight=20            "预览方法定义时分割窗口高度
"}}

" conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" 清除行尾多余的空格
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :%s/\s\+$//e

" % to bounce from do to end etc.
runtime! macros/matchit.vim

"键盘映射
map <F2> bi{<Esc>ea}<Esc>      "'用一对大括号把一个单词括起来'映射到<F2>键
map <F3> bi[<Esc>ea]<Esc>      "'用一对方括号把一个单词括起来'映射到<F3>键
map <F4> bi"<Esc>ea"<Esc>      "'用一对双引号把一个单词括起来'映射到<F3>键
map <F5> bi%<Esc>ea%<Esc>      "'用一对百分号把一个单词括起来'映射到<F3>键
set whichwrap=b,s,<,>,h,l,[,]   "指定可以换行的命令
set wrap

" enable emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,erb EmmetInstall

" easytags: async tags
let g:easytags_async = 1

" Markdown plugin
" disable the folding configuration for markdown
let g:vim_markdown_folding_disabled = 1
" enable TOC window auto-fit
let g:vim_markdown_toc_autofit = 1
" highlight YAML front matter as used by Jekyll
let g:vim_markdown_frontmatter = 1

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

"}}

" RSpec.vim mappings
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vim_vundle_plugins/bundle/Vundle.vim
call vundle#begin("~/vim_vundle_plugins/bundle")
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin("~/some/path/here") OR () for default path
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-airline/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'edkolev/tmuxline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nachumk/systemverilog.vim'

" these may not all be useful or might slow things down. take a look
Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'jceb/vim-orgmode'
Plugin 'thinca/vim-quickrun'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/vimproc.vim'  " need to make $ make -f make_cygwin.mak
Plugin 'hyiltiz/vim-plugins-profile'
Plugin 'tpope/vim-abolish'
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'tpope/vim-tbone'
Plugin 'Shougo/vimshell.vim'

Plugin 'edkolev/promptline.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

set background=dark

" syntax enable
" let g:solarized_termcolors=256
" colorscheme solarized

" syntax on
" let base16colorspace=256
" colorscheme base16-default
"

syntax on
let g:rehash256 = 1
" let g:molokai_original = 1
colorscheme molokai

"
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Get Vim-Airline to work/show up
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" unicode symbols
let g:airline_left_sep           = '»'
let g:airline_left_sep           = '▶'
let g:airline_right_sep          = '«'
let g:airline_right_sep          = '◀'
let g:airline_symbols.linenr     = '␊'
let g:airline_symbols.linenr     = '␤'
let g:airline_symbols.linenr     = '¶'
let g:airline_symbols.branch     = '⎇'
let g:airline_symbols.paste      = 'ρ'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.paste      = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep           = ''
let g:airline_left_alt_sep       = ''
let g:airline_right_sep          = ''
let g:airline_right_alt_sep      = ''
let g:airline_symbols.branch     = ''
let g:airline_symbols.readonly   = ''
let g:airline_symbols.linenr     = ''

let g:airline#extensions#whitespace#trailing_format          = 'T[%s]'
let g:airline#extensions#whitespace#mixed_indent_format      = 'MI[%s]'
let g:airline#extensions#whitespace#long_format              = 'L[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'MIF[%s]'


"Strictly necessary for Powerline
set encoding=utf-8

" Remove trailing whitespaces
"nnoremap <silent> <F5> :%s/\s\+$//<CR>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent

set number
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

nmap <C-o> O <Esc>j
nmap <CR> o<Esc>k

" Vim easy align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


let g:easy_align_delimiters = {
            \ '>': { 'pattern': '>>\|=>\|>' },
            \ '/': {
            \     'pattern':         '//\+\|/\*\|\*/',
            \     'delimiter_align': 'l',
            \     'ignore_groups':   ['!Comment'] },
            \ ']': {
            \     'pattern':       '[[\]]',
            \     'left_margin':   0,
            \     'right_margin':  0,
            \     'stick_to_left': 0
            \   },
            \ ')': {
            \     'pattern':       '[()]',
            \     'left_margin':   0,
            \     'right_margin':  0,
            \     'stick_to_left': 0
            \   },
            \ 'd': {
            \     'pattern':      ' \(\S\+\s*[;=]\)\@=',
            \     'left_margin':  0,
            \     'right_margin': 0
            \   }
            \ }


"Important for terminal vim to work in cygwin.
set term=xterm-256color

let git_sha_slice = {
			\'function_name': 'git_sha',
			\'function_body': [
			\'function git_sha {',
			\'  local sha',
			\'  sha=$(git rev-parse --short HEAD 2>/dev/null) || return 1',
			\'  printf "%s" "$sha"',
			\'}']}


let git_stash_num = {
			\'function_name': 'git_stash_number',
			\'function_body': [
			\'function git_stash_number {',
			\'  local stash_file',
			\'  local num_stashed',
			\'  local stashed_symbol="∂"',
			\'  num_stashed=0',
			\'  stash_file="$( git rev-parse --git-dir 2>/dev/null )/logs/refs/stash"',
			\'  if [[ -e "${stash_file}" ]]; then',
			\'    while IFS="" read -r wcline || [[ -n "$wcline" ]]; do',
			\'      ((num_stashed++))',
			\'    done < ${stash_file}',
			\'    printf "%s%i" "$stashed_symbol" "$num_stashed"',
			\'  fi',
			\'}']}




" from https://github.com/magicmonty/bash-git-prompt/blob/master/gitstatus.sh
"let git_stash_num =  {
"         \'function_name': 'git_stash_number',
"         \'function_body': [
"         \'function git_stash_number {',
"         \'  local stash_file',
"  	  \'  local num_stashed',
"	  \'  local stashed_symbol="∂"',
"	  \'  num_stashed=0',
"	  \'  stash_file="$( git rev-parse --git-dir 2>/dev/null )/logs/refs/stash"',
"         \'  if [[ -e "${stash_file}" ]]; then',
"         \'    while IFS="" read -r wcline || [[ -n "$wcline" ]]; do',
"         \'      ((num_stashed++))',
"         \'    done < ${stash_file}',
"	  \'    printf "%s%i" "$stashed_symbol" "$num_stashed"',
"         \'  fi',
"         \'}']}

"let git_stash_number = {


""}

"Issue with Promptline: Must exit vim and reenter vim before creating another shell prompt customization
" file. Or else it doesnt grab the changes you made since the last time you created a prompt customization

"let g:promptline#slices#cwd({ 'dir_limit': 8 }) this causes issues if put in the preset
" learn hashes in vim and in bash. how they work !!
" promptline does slow the prompt down though
"learn vimscript too !

"let g:promptline_theme = 'airline_visual'
let g:promptline_preset = {
			\'a' : [ promptline#slices#host(), promptline#slices#user() ],
			\'b' : [ promptline#slices#cwd({'dir_limit':8}) ],
			\'c' : [ promptline#slices#vcs_branch() ],
			\'y' : [ promptline#slices#git_status(), git_sha_slice, git_stash_num ],
			\'z' : [ promptline#slices#jobs() ],
			\'warn' : [ promptline#slices#last_exit_code(),  promptline#slices#battery() ]}

"doesnt work unless you disable powerline symbols
let g:promptline_symbols = {
			\'dir_sep' : '/'}

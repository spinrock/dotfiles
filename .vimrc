colorscheme railscasts
set autoindent
set number
set showmode
set title
set ruler
set visualbell t_vb=
set incsearch
set showmatch
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
augroup MyXML
	autocmd!
	autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END
syntax on
autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict


" -------------------------
" Start Neobundle Settings.
" -------------------------
" bundle で管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" enobundle 自体を neobundle で管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTree を設定
NeoBundle 'scrooloose/nerdtree'

" multipleCursors を設定
NeoBundle 'terryma/vim-multiple-cursors'

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

" vim を立ち上げた時に，自動的に vim-indent-guides をオンにする
let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合，インストールするかどうかを訪ねてくれるように設定
" 毎回聞かれると邪魔な場合もあるので，この設定は任意です．
NeoBundleCheck

" -------------------------
" End Neobundle Settings.
" -------------------------

" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""""""""""""""
" 挿入モード時，ステータスラインの色を変更
""""""""""""""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
		augroup InsertHook
			autocmd!
			autocmd InsertEnter * call s:StatusLine('Enter')
			autocmd InsertLeave * call s:StatusLine('Leave')
		augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
	if a:mode == 'Enter'
		silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
		silent exec g:hi_insert
	else
		highlight clear StatusLine
		silent exec s:slhlcmd
	endif
endfunction

function! s:GetHighlight(hi)
	redir => hl
	exec 'highlight ' . a:hi
	redir END
	let hl = substitute(hl, '[\r\n]', '', 'g')
	let hl = substitute(hl, 'xxx', '', '')
	return hl
endfunction
""""""""""""""""""""""""""""""""""""""""""

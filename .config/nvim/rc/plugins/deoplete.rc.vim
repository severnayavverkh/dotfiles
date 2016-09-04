let g:deoplete#enable_at_startup = 1

augroup omnicomp
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
	"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType javascript setlocal omnifunc=tern#Complete
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	"autocmd FileType tex setlocal omnifunc=LatexBox_Complete
	autocmd Filetype typescript setlocal omnifunc=tsuquyomi#complete
augroup END

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.typescript = '\h\w*\|[^. \t]\.\w*'
let g:deoplete#omni_patterns.tex = '\\\h\w*{'

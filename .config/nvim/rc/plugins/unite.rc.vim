" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" バッファ一覧
nnoremap <silent> <Space>BB :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> <Space>ff :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" Like helm-mini
nnoremap <silent> <Space>bb :<C-u>Unite buffer bookmark file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" タブ
nnoremap ,ut :<C-u>Unite tab<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

"outline, line
nnoremap <silent> ,uo :<C-u>Unite outline<CR>
nnoremap <silent> ,ul :<C-u>Unite line<CR>

"grep
nnoremap <silent> ,ug :<C-u>Unite grep<CR>

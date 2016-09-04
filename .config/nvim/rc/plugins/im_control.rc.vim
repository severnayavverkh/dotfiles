if has('unix')
	" 「日本語入力固定モード」の動作モード(fcitx)
	let IM_CtrlMode = 6
	" 「日本語入力固定モード」切替キー
	inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>

	" <ESC>押下後のIM切替開始までの反応が遅い場合はttimeoutlenを短く設定してみてください。
	" IMCtrl()のsystem()コマンド実行時に&を付けて非同期で実行するという方法でも体感速度が上がる場合があります。
	set timeout timeoutlen=3000 ttimeoutlen=100 
endif

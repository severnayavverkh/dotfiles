let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:rc_dir = s:config_home . '/nvim/rc'
let s:toml_file = s:rc_dir . '/dein.toml'
let s:toml_lazy_file = s:rc_dir . '/dein_lazy.toml'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

let &runtimepath = s:dein_repo_dir . ',' . &runtimepath

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file, s:toml_lazy_file])
		call dein#load_toml(s:toml_file, {'lazy': 0})	
		call dein#load_toml(s:toml_lazy_file, {'lazy': 1})
	call dein#end()
call dein#save_state()
endif
syntax on

if dein#check_install()
  call dein#install()
endif

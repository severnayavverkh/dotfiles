export ENHANCD_COMMAND=ecd

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "mollifier/anyframe"

zplug "b4b4r07/enhancd", use:init.sh

zplug "zsh-users/zsh-syntax-highlighting", nice:10

zplug "zsh-users/zsh-completions"

zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf

zplug "junegunn/fzf", as:command, use:bin/fzf-tmux

zplug "peco/peco", as:command, from:gh-r

zplug "~/.zsh", from:local

zplug "mafredri/zsh-async", on:sindresorhus/pure

zplug "sindresorhus/pure"

zplug "b4b4r07/cli-finder"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Editor
EDITOR=/usr/bin/nvim
export EDITOR
export VISUAL=$EDITOR

# Linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="$HOME/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT="$HOME"
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="$HOME/cocos2d-x-3.10/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/bin
export PATH=$ANT_ROOT:$PATH

#ccache
export PATH="/usr/lib/ccache/bin/:/usr/local/bin/:$PATH"

#go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

#History
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

#cdr
    # cdr, add-zsh-hook を有効にする
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs

    # cdr の設定
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-max 500
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/shell/chpwd-recent-dirs"
    zstyle ':chpwd:*' recent-dirs-pushd true

#thef*ck
eval "$(thefuck --alias)"

alias tmux="tmux -2"

alias ls="ls -GF --color"

#########################################
# zplug
#########################################

source ~/.zplug/init.zsh

#gitルートに飛ぶやつ
zplug "mollifier/cd-gitroot"

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "zsh-users/zsh-completions"

zplug "peco/peco", as:command, from:gh-r

# テーマ
zplug "romkatv/powerlevel10k", as:theme, depth:1
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load 


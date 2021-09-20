stty stop undef

#-------- エイリアス --------
alias l='ls -lrt'
alias la='ls -lart'
alias sn='screen'

#-------- プロンプト表示 --------
PROMPT='[%n@%m]%# '
RPROMPT='[%d]'

#-------- オプション--------
## ディレクトリ名を入力するだけで移動
setopt AUTO_CD
cdpath=(.. ~)

## 単語区切り設定
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-./;@"
zstyle ':zle:*' word-style unspecified

#-------- 環境変数 --------
export PATH=$PATH:/usr/local/bin:$HOME/bin
export LANG=ja_JP.UTF-8

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=$PATH:${JAVA_HOME}/bin

# Node.js
export PATH=$PATH:$HOME/.nodebrew/current/bin

# Homebrew (echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ユーザ名/.zshrc)
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export HOMEBREW_SHELLENV_PREFIX="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

stty stop undef

#-------- エイリアス --------
alias l='ls -lrt'
alias la='ls -lart'
alias sn='screen'

#-------- プロンプト表示 --------
export PS1='\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[01;36m\] \w \$\[\033[00m\] '

#-------- 環境変数 --------
export PATH=$PATH:/usr/local/bin:$HOME/bin

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=$PATH:${JAVA_HOME}/bin

# Node.js
export PATH=$PATH:$HOME/.nodebrew/current/bin

# Derby
export DERBY_HOME=$HOME/dev/db-derby-10.14.2.0-bin

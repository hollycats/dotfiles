stty stop undef

#grep options.
export GREP_OPTIONS="--binary-files=without-match --color=auto"

#prompt.
export PS1='\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[01;36m\] \w \$\[\033[00m\] '

#alias.
alias ls='ls -GCF'
alias ll='ls -GlFh'
alias lls='ls -GlFhrt'
alias la='ls -GAlFh'
alias las='ls -GAlFhrt'
#alias ll='ls -AlFrth --show-control-chars --color=auto'
alias sn='screen'

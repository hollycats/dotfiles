if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# pyenv.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

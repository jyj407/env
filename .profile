# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


alias gr='grep --color -rn'
alias gri='grep --color -rni' #ignore cases
alias gre='grep --color -rn --exclude \*.orig' #ignore .orig files
alias grhc="grep -rn --color --include \*.h --include \*.cpp"
alias grtd="grep -rn --color --include \*.td"
alias hi='history'

#from the Internet
alias ll="ls -lharst"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias datecp='/$HOME/bin/datecp'


#clang/llvm tool aliases
alias clang='$BUILD/clang'
alias clang++='$BUILD/clang++'
alias format='$BUILD/clang-format'
alias lit='$BUILD/llvm-lit'
alias check='$SRC/llvm/utils/update_llc_test_checks.py'
alias fh='git diff -U0 --no-color HEAD^ | clang-format-diff.py -i p1'

# other tools aliases
alias em='/usr/bin/emacs'
alias vi='/usr/bin/vim'
alias vim='/usr/bin/vim'
alias patch='patch -t -p1'

# fast directory access aliases



#source  ~/.bashrc
. ~/.git.sh

# Here are more extra paths that may be useful, sometime, disable it, if the
# shell becomes too slow
. ~/.path.sh

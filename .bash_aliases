# Laravel
 
artisan() {
  if [ -f bin/artisan ]; then
    php bin/artisan "$@"
  else
    php artisan "$@"
  fi
}
 
alias serve='artisan serve'
alias tinker='artisan tinker'
 
 
# Misc PHP
 
t() {
  if [ -f vendor/bin/phpunit ]; then
    vendor/bin/phpunit "$@"
  else
    phpunit "$@"
  fi
}

# Linux

if type "xdg-open" &> /dev/null; then
    alias open="xdg-open"
fi

# Directories
alias ll='ls -FGlAhp'
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

alias bashrc="code ~/.bashrc "
alias aliases="code ~/.bash_aliases"
alias reloadcli="source $HOME/.bashrc"
alias nah="git reset --hard && git clean -df"
alias cpyssh="xclip -selection clipboard < $HOME/.ssh/id_rsa.pub"

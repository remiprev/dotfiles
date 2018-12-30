# Local aliases
# --------------------------------------
alias ls="ls -hFG --color=always --group-directories-first"
alias ll='ls -la'
alias l='ls -l'
alias rm='rm -i'
alias p='ps -ef | rg -i '
alias listen="sudo lsof -i -P"
alias h="heroku"
alias ..='cd ..'
alias ~='cd ~'
alias pr='open-pr'

# Editor (always forward to Neovim!)
alias vi='nvim'
alias vim='nvim'

# Ripgrep
alias ag="rg"
alias ack="rg"

# Ruby
alias b="bundle"
alias be="bundle exec "

# Tmux
alias tmux="TMPDIR=$HOME/.tmux tmux"
alias t="teamocil"
compctl -g '~/.teamocil/*(:t:r)' teamocil

# Daemons
alias redis-daemon="redis-server /usr/local/etc/redis.conf"
alias elasticsearch-daemon="elasticsearch -d"
alias pg-daemon="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

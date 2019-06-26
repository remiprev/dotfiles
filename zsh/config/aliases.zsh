# Local aliases
# --------------------------------------
alias ls="lsd -hF --color=always"
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

# cURL
alias curl-headers="curl -s -D - -o"

# Daemons
alias redis-daemon="redis-server /usr/local/etc/redis.conf"
alias elasticsearch-daemon="elasticsearch -d"
alias pg-daemon="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

alias pu='pushd'
alias po='popd'

alias sc='ruby script/console'
alias sd='ruby script/server --debugger'

alias mr='mate CHANGELOG app config db lib public script spec test'
alias .='pwd'
alias ...='cd ../..'
alias ..='cd ..'

alias c='clear'

alias _='sudo'

#alias g='grep -in'
alias g='git'

alias history='fc -l 1'

alias ls="ls -F -h -G"
alias ll='ls -al'

alias gst='git status'
alias gadd='git add .'


gcommit () { git commit -m "$*"; }

alias sgem='sudo gem'

alias rfind='find . -name *.rb | xargs grep -n'

alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'


alias et='mate . &'
alias ett='mate app config lib db public spec test Rakefile Capfile Todo &'
alias etp='mate app config lib db public spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'
alias etts='mate app config lib db public script spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

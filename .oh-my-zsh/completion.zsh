setopt noautomenu
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

#unsetopt flowcontrol

WORDCHARS=''

autoload -U compinit
compinit

zmodload -i zsh/complist

zstyle ':completion:*' insert-tab pending


zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list
zstyle ':completion:*' matcher-list 'r:|[._-]=** r:|=**' 'l:|=** r:|=**'

zstyle ':completion:*' file-sort name



zstyle ':completion:*' list-colors ''
zstyle ':completion:*' hosts $( sed 's/[, ].*$//' $HOME/.ssh/known_hosts )
zstyle ':completion:*:hosts' list-colors '=(#b)(*)(e-lam.net)=01;36=31;31' '=[^.]#=01;31'

zstyle ':completion:*:expand:*' tag-order all-expansions  

zstyle ':completion:*' verbose yes 
zstyle ':completion:*:descriptions' format '%B%d%b' 
zstyle ':completion:*:messages' format '%d' 
zstyle ':completion:*:warnings' format 'No matches for: %d' 
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b' 
zstyle ':completion:*' group-name ''  # autorise un caractère sur trois à être une erreur de typo 
zstyle -e ':completion:*:approximate:*' max-errors par 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'




unsetopt MENU_COMPLETE
setopt AUTO_MENU

# bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu yes select
# zstyle ':completion:*:*:*:*:processes' force-list always

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char


setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

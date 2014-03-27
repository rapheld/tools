PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
PATH="$PATH:~/bin:~/tools"

export EDITOR='vi'

alias rsrc='source ~/.bash_profile'
alias wsrc='vi ~/.bash_profile'

alias ll='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ld='ll | grep "^d"'

# directory shortcuts
alias src='cd ~/src'

# rails projects
alias be='bundle exec'
alias bi='bundle' 
alias bl='bundle --local'
alias fs='foreman start'
alias gti='git'
alias gitp='git pr && bundle --local'
alias rc='rails console'

# git autocompletion support
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# rvm support
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# git branch shell prompt support
source ~/.git-prompt.sh
PS1='\[\e[0;35m\][\u@\h \W$(__git_ps1 " (\[\e[0;37m\]%s\[\e[0;35m\])")] \$ \[\e[m\]'

#RUBY_GC_HEAP_INIT_SLOTS=300000; export RUBY_GC_HEAP_INIT_SLOTS  # for ruby 2.1
RUBY_HEAP_MIN_SLOTS=3000000; export RUBY_HEAP_MIN_SLOTS
RUBY_HEAP_SLOTS_INCREMENT=250000; export RUBY_HEAP_SLOTS_INCREMENT
RUBY_HEAP_SLOTS_GROWTH_FACTOR=1; export RUBY_HEAP_SLOTS_GROWTH_FACTOR
RUBY_GC_MALLOC_LIMIT=50000000; export RUBY_GC_MALLLOC_LIMIT

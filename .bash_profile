#!/bin/bash
export PYTHONDONTWRITEBYTECODE=1

# ALIASES
alias apdex='python cli.py'
alias rdd='python manage.py rdd'
alias rddx='python cli.py rdd'
alias genenv='cd ~/1m/apps/generic && source envo/bin/activate && cd generic'
alias bing='echo "Variable Speed Vibrator in Bash_prof"'
alias ops='cd ~/1m/ops/'
alias ops='cd ~/1m/ops/'
alias ls='ls -A'
# source /usr/local/opt/autoenv/activate.sh
alias octo="cd ~/1m/apps/octopus/ && source env/bin/activate && cd octopus"
alias gen="cd ~/1m/apps/generic/ && source envo/bin/activate && cd generic"
alias prof="vi ~/.bash_profile"

alias dc='docker-compose'
alias kc='kubectl'
alias d='docker'

# TASKS
worde(){
  echo "this is the word"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# INSPECTORS
pyscan(){
echo "Local Machine OS:"
uname -a
echo "Native Local Python: "
python --version
}




alias oldschool='source ~/oldschool.sh'
alias bootpostgres='postgres -D /usr/local/var/postgres'
alias createdb='/usr/local/bin/createdb'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/drx/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/drx/google-cloud-sdk/completion.bash.inc'
alias dashboard='cd ~/1m/apps/dashboard/'


echo "Initing update ps1"
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

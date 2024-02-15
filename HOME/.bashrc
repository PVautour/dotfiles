#
# ~/.bashrc
#

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH=$PATH:/home/pvautour/go/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set terminal colors based on pywal colors
cat ~/.cache/wal/sequences &

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

if [ -f $XDG_CONFIG_HOME/HOME/bash_aliases.sh ]; then
. $XDG_CONFIG_HOME/HOME/bash_aliases.sh
fi

# bash parameter completion for the Rush CLI

_rush_bash_complete()
{
  local word=${COMP_WORDS[COMP_CWORD]}

  local completions
  completions="$(rush tab-complete --position "${COMP_POINT}" --word "${COMP_LINE}" 2>/dev/null)"
  if [ $? -ne 0 ]; then
    completions=""
  fi

  COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -f -F _rush_bash_complete rush

# end: bash parameter completion for the Rush CLI

if [ -f ~/.config/HOME/.git-completion.bash ]; then
  . ~/.config/HOME/.git-completion.bash
fi

# bash completion for aws-cli
complete -C '/usr/local/bin/aws_completer' aws

# start: Run 'nvm use' automatically every time there's 
# a .nvmrc file in the directory. Also, revert to default 
# version when entering a directory without .nvmrc
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  if [[ "$PWD" =~ "$PREV_PWD" && ! -f ".nvmrc" ]]; then
    return
  fi

  PREV_PWD=$PWD
  if [[ -f ".nvmrc" ]]; then
    nvm use
    NVM_DIRTY=true
  elif [[ $NVM_DIRTY = true ]]; then
    nvm use default
    NVM_DIRTY=false
  fi
}

export PROMPT_COMMAND="$PROMPT_COMMAND; enter_directory"
# end: Run 'nvm use' automatically

# start: Allow spawning new terminal in current working directory
osc7_cwd() {
    local strlen=${#PWD}
    local encoded=""
    local pos c o
    for (( pos=0; pos<strlen; pos++ )); do
        c=${PWD:$pos:1}
        case "$c" in
            [-/:_.!\'\(\)~[:alnum:]] ) o="${c}" ;;
            * ) printf -v o '%%%02X' "'${c}" ;;
        esac
        encoded+="${o}"
    done
    printf '\e]7;file://%s%s\e\\' "${HOSTNAME}" "${encoded}"
}
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }osc7_cwd
# end 

# set openai key
export OPENAI_KEY=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

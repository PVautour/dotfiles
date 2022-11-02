alias cd="z"
alias c="z"
alias cdi="zi"
alias ci="zi"
alias ls="exa -s type --icons"
alias cat="bat --style plain"
alias d="date '+%Y/%m/%d %H:%M:%S'"
alias dc="date '+%Y/%m/%d %H:%M:%S' | wl-copy"
alias bbat="cat /sys/class/power_supply/BAT0/capacity"
alias wifi="networkmanager_dmenu"
alias pping="ping 8.8.8.8 -c 1"
alias hx="helix"
alias za="zathura"
alias sound="pulsemixer"
alias serve="light-server -b 127.0.0.1 -s ./"
alias lo="loffice"
alias weather="curl wttr.in/Ottawa"
alias shortcuts="bat ~/.config/HOME/.bash_aliases"
alias td="hx ~/Sync/Work/Todo/todo.md"
alias mn="hx ~/Sync/Work/Todo/meeting-notes.md"
alias ptd="hx ~/Sync/todo.md"
alias qn="hx ~/Sync/quicknote.md"
alias sp="spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias sc="grim screenshot_$(date '+%Y-%m-%d_%H:%M:%S').png"
alias gpu="supergfxctl"
alias s="cd ~/Sync"
alias t="tree -I node_modules"
alias cloud="export TERM=vt100 && ssh -v ec2-user@ec2-3-96-188-49.ca-central-1.compute.amazonaws.com"
alias set-aws="wl-paste | sed 's/\[006288227511_PowerUser\]/\[default\]/g' >> ~/.aws/credentials && echo 'Aws credentials set successfully.'"
alias copy="wl-copy"
alias paste="wl-paste"
alias gc="git checkout"
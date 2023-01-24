alias cd="z"
alias cdi="zi"
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
alias td="hx ~/Sync/Work/todo/todo.md"
alias mn="hx ~/Sync/Work/todo/meeting-notes.md"
alias ptd="hx ~/Sync/todo.md"
alias qn="hx ~/Sync/quicknote.md"
alias sp="spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias sc="grim screenshot_$(date '+%Y-%m-%d_%H:%M:%S').png"
alias gpu="supergfxctl"
alias s="cd ~/Sync"
alias t="tree -I node_modules"
alias cloud="export TERM=vt100 && ssh -v ec2-user@ec2-3-96-188-49.ca-central-1.compute.amazonaws.com"
alias set-aws="wl-paste | sed 's/\[006288227511_PowerUser\]/\[default\]/g' > ~/.aws/credentials && echo 'Aws credentials set successfully.'"
alias copy="wl-copy"
alias paste="wl-paste"
alias gc="git checkout"
alias oc9="ssh -i ~/.ssh/id_ed25519 ubuntu@ec2-35-182-107-234.ca-central-1.compute.amazonaws.com"
alias nc9="ssh -i ~/.ssh/id_ed25519 ubuntu@ec2-35-183-54-150.ca-central-1.compute.amazonaws.com"
alias p="python"
alias aws-ll="~/.config/HOME/Scripts/aws-print-lambda-logs.sh"
alias aws-rl="~/.config/HOME/Scripts/aws-invoke-lambda.sh"
alias aws-dl="~/.config/HOME/Scripts/aws-zip-and-deploy.sh"
alias power-draw="awk '{print \$1*10^-6 \" W\"}' /sys/class/power_supply/BAT0/power_now"

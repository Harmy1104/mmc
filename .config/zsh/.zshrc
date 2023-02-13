# profiling
# zmodload zsh/zprof

# normal='\033[0m'
# bold='\033[1m'
# dim='\033[2m'
# italic='\033[3m'
# underline='\033[4m'
# blinking='\033[5m'
# reverse='\033[7m'
# invisible='\033[8m'


PWD=`basename \`pwd\``

#                                   ╭─────────╮
#                                   │ imports │
#                                   ╰─────────╯
source $ZDOTDIR/func
source $ZDOTDIR/alias
# source $ZDOTDIR/prompt

# fzf stuff
source /usr/local/Cellar/fzf/0.37.0/shell/completion.zsh
source /usr/local/Cellar/fzf/0.37.0/shell/key-bindings.zsh

source ~/.config/zsh/themes/catppuccin.zsh

#                                  ╭──────────╮
#                                  │ vim mode │
#                                  ╰──────────╯
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.zsh

#                                     ╭─────╮
#                                     │ gen │
#                                     ╰─────╯
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

#                            ╭──────────────────────╮
#                            │ run tmux on start-up │
#                            ╰──────────────────────╯
ALACRITTY_PID=`ps -ax | grep Alacritty | grep -v grep | head -n 1 | awk '{print $1}'`
if [[ -n $KITTY_PID || -n $ALACRITTY_PID ]] then
    if [[ -z "$TMUX" ]]; then
            tmux a || tmux new-session -s $PWD
    fi
fi

#                               ╭─────────────────╮
#                               │ bun completions │
#                               ╰─────────────────╯
[ -s "/Users/harmeepatel/.bun/_bun" ] && source "/Users/harmeepatel/.bun/_bun"

#                                     ╭─────╮
#                                     │ fnm │
#                                     ╰─────╯
eval "$(fnm env --use-on-cd)"


#                                   ╭────────╮
#                                   │ zoxide │
#                                   ╰────────╯
eval "$(zoxide init zsh)"

# starship
eval "$(starship init zsh)"


# profiling
# zprof

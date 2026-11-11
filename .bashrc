# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# --- 1. OS-Specific System Defaults ---
if [[ -d /usr/share/omarchy ]]; then
    # We are on Omarchy OS
    if [[ -f /etc/omarchy.conf ]]; then
        source /etc/omarchy.conf
        export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
    else
        export OMARCHY_PATH=/usr/share/omarchy
    fi
    [[ -f "$OMARCHY_PATH/default/bash/rc" ]] && source "$OMARCHY_PATH/default/bash/rc"
elif [[ -f /etc/bash.bashrc ]]; then
    # We are on Debian, Ubuntu, or vanilla Arch
    source /etc/bash.bashrc
fi

# --- 2. Your Agnostic Modular Dotfiles ---
[[ -f ~/.bash_envs ]] && source ~/.bash_envs
[[ -f ~/.bash_shell ]] && source ~/.bash_shell
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -f ~/.bash_functions ]] && source ~/.bash_functions
[[ -f ~/.bash_init ]] && source ~/.bash_init

# --- 3. Local Tool Environments (e.g., uv) ---
[[ -f "$HOME/.local/share/../bin/env" ]] && source "$HOME/.local/share/../bin/env"

























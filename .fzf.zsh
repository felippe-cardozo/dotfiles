# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mejorf/.fzf/bin* ]]; then
  export PATH="$PATH:/home/mejorf/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mejorf/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mejorf/.fzf/shell/key-bindings.zsh"


# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/baicheng/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/baicheng/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/baicheng/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/baicheng/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_OPTS='--height 20% --reverse --border'

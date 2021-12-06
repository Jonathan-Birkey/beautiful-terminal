# Define custom terminal prompt
NEWLINE=$'\n'
source ~/.zsh/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='%F{71}jb %~%f%F{33}$(__git_ps1 " (%s)")%f%F{71}$NEWLINE%#%f '

# Define aliases
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -a'
alias ll='ls -la'
alias rm='rm -rf'

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# Exports
export PATH="/opt/homebrew/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"


# Theme
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME=""


# plugins=(git)

# Sources
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#config
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)" # tmb incluye el alias para cd
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach -t 0 || tmux new -s 0
fi


# aliases
alias cl="clear"
alias ls="eza"
alias cat="bat"

# --- Git aliases ---
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gpl="git pull"
alias gl="git log --oneline --graph --decorate"
alias gch="git checkout"
alias gb="git branch"
alias gd="git diff"
alias gds="git diff --staged"
alias grh="git reset --hard"
alias gst="git stash"
alias gstp="git stash pop"
alias grpr="git remote prune origin"

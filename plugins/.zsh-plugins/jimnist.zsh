eval "$(mise activate zsh)"

alias ll='ls -la --color=auto'
alias cls='clear' # Clear Screen command
alias md='mkdir -p'
alias mux='tmuxinator'

alias reload!='. ~/.zshrc' # the alias is reload!

if [[ -n $SSH_CONNECTION ]]; then
  PROMPT="%F{#5fd7ff}%n@%m:%3~ $(git_prompt_info '[ ' ']')%f"$'\n'"%F{#5fff00}%B>:%b%f "
else
  PROMPT="%F{#5fd7ff}%3~ $(git_prompt_info '[' ']')%f"$'\n'"%F{#5fff00}%B>:%b%f "
fi
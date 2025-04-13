(( ! $+commands[asdf] )) && return

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `asdf`. Otherwise, compinit will have already done that.
if [[ ! -f "$ASDF_DATA_DIR/completions/_asdf" ]]; then
  typeset -g -A _comps
  autoload -Uz _asdf
  _comps[asdf]=_asdf
fi
asdf completion zsh >| "$ASDF_DATA_DIR/completions/_asdf" &|
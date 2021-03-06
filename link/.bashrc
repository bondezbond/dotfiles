# Where the magic happens.
export DOTFILES=~/.dotfiles

# Add binaries into the path
PATH=$DOTFILES/bin:$PATH
export PATH

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

src

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ezbon.jacob/Repos/ghe.coxautoinc.com/MAN-VIKings/image-order-processor/node_modules/tabtab/.completions/serverless.bash ] && . /Users/ezbon.jacob/Repos/ghe.coxautoinc.com/MAN-VIKings/image-order-processor/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ezbon.jacob/Repos/ghe.coxautoinc.com/MAN-VIKings/image-order-processor/node_modules/tabtab/.completions/sls.bash ] && . /Users/ezbon.jacob/Repos/ghe.coxautoinc.com/MAN-VIKings/image-order-processor/node_modules/tabtab/.completions/sls.bash
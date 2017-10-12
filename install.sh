#!/bin/bash

# Register semantic commits git aliases
#
# $1 — git alias and semantic message prefix
# [$2] — (optional) custom semantic message prefix
function make_git_alias {
  if ! git config --global --get-all alias.$1 &>/dev/null; then
    git config --global alias.$1  '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]] && [[-z $2]]; then git commit -m "'$1' " -e; else git commit -$3m "'$1'($1): $2"; fi }; f'
    echo 'Alias installed ' $1
  else
    echo $1 : 'alias already present, remove it from ~/.gitconfig file first'
  fi
}
# Register aliases
echo 'Installing git aliases'

  semantic_aliases=( 'feat' 'fix' 'style' 'cleanup' 'refactor' 'perf' 'test' 'chore' 'tracking' 'docs' )

  for semantic_alias in "${semantic_aliases[@]}"; do
    make_git_alias $semantic_alias
  done

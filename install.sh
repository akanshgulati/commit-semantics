#!/bin/bash

# Register semantic commits git aliases
#
# $1 — git alias and semantic message prefix
# [$2] — (optional) custom semantic message prefix
function make_git_alias {
  if ! git config --global --get-all alias.$1 &>/dev/null; then
    if [[ -z $2 ]]; then
      git config --global alias.$1  '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]] && [[-z $2]]; then git commit -m "'$1' " -e; else git commit -m "'$1'($1): $2"; fi }; f'
    else
      git config --global alias.$1  '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "'$2': " -e; else git commit -m "'$2': $1"; fi }; f'
    fi
  fi
}
# Register aliases
echo 'Installing git aliases…'

  semantic_aliases=( 'feat' 'fix' 'style' 'cleanup' 'refactor' 'perf' 'test' 'chore' 'tracking' 'docs' )

  for semantic_alias in "${semantic_aliases[@]}"; do
    echo 'Installing git alias '  $semantic_alias
    make_git_alias $semantic_alias
  done

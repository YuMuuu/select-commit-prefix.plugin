#!/bin/zsh
function git-commit--select-prefix() {
  export XDG_DATA_HOME=$HOME/.local/share
  local toml_file=$XDG_DATA_HOME/sheldon/repos/github.com/YuMuuu/zsh-select-commit-prefix/prefixes.toml
  local choices=()
  local prefix=""
  local description=""


  if [[ -f "$toml_file" ]]; then
    keys=($(dasel -f "$toml_file" -r toml '.prefixes.all().key' 2>/dev/null ))
    descriptions=$(dasel -f "$toml_file" -r toml '.prefixes.all().description' 2>/dev/null)
    descriptions_array=()
    while IFS= read -r line; do
      descriptions_array+=("$line")
    done <<< "$descriptions"

    choices=()
    for ((i=0; i<${#keys[@]}; i++)); do
      choices+=("${keys[i]}: ${descriptions_array[i]}")
    done
  fi

  if [[ -z "${choices[0]}" ]]; then
      choices=("${choices[@]:1}")
  fi

  choices=("${choices[@]//\'/}")

  local selected=$(printf "%s\n" "${choices[@]}" | peco)
  prefix=${selected%%:*}

  git commit -e -m "${prefix}: "
}

zle -N git-commit--select-prefix
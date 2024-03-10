#bin/sh

function git-commit--select-prefix() {
  #TODO: tomlから選択できるprefixを読み込むようにする
  prefixes=(
    "build"
    "chore"
    "ci"
    "docs"
    "feat"
    "fix"
    "perf"
    "refactor"
    "revert"
    "style"
    "test"
  )
  printf "%s\n" "${prefixes[@]}" | peco | xargs -o -IPREFIX git commit -m "PREFIX: " -e
}

zle -N git-commit--select-prefix
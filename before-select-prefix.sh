#bin/sh

#TODO: tomlから選択できるprefixを選択できるようにする
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

printf "%s\n" "${prefixes[@]}" | peco | xargs -o -IPREFIX git commit -m PREFIX: -e
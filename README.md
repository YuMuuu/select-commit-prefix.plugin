# select-commit-prefix

`git commit` の代わりに `git-commit--select-prefix` を実行すると、Conventional Commits の prefix が commit message に追加された状態で git の core.editor に登録した editor が起動します

## commit のキャンセル方法
### Vim の場合

`:cq` / `:cquit` で vim を終了させると commit がキャンセルされる

### emacs の場合

WIP
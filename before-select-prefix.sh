#bin/sh
arr="fix\nadd\nfeat\nrefactor\ndisable\ndocs\ntest\nchore"
echo ${arr} | peco | xargs -o -IPREFIX git commit -m PREFIX: -e
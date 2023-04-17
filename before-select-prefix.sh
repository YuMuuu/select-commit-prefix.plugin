#bin/sh
arr="fix\nadd\nfeat\nrefactor\ndisable\ndocs\ntest\nchore"
echo ${arr} | peco | xargs -o -IXXXX git commit -m XXXX: -e
#bin/sh
arr="fix\nadd\nfeat\nrefactor\ndisable\ndocs\ntest\nchore"
echo ${arr} | peco | xargs  -IXXXX git commit -m XXXX: -e
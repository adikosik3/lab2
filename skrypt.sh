#!/bin/bash
if [ $1 = "--help" ] ; then
echo test
fi
if [ $1 = "--date" ] ; then
date
fi
if [[ $1 = "--logs" ]] && [[ -n $2 ]] ; then
x=1;
while [ $x -le $2 ] ; do
    echo log$x.txt skrypt.sh $(date) >> log$x.txt
    x=$[x + 1]
done
else
x=1;
while [ $x -le 100 ] ; do
    echo log$x.txt skrypt.sh $(date) >> log$x.txt
    x=$[x + 1]
done
fi

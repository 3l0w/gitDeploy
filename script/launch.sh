#!/bin/bash
path=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/git/script/bin
cd /home/git/script
nbligne=`ls /home/git/deployservice/ | wc -l`
i=1
while (( i <= nbligne ));do
list=`ls /home/git/deployservice/ | sed -n $i"p"`
sudo screen -dmS $list /home/git/script/exec.sh $list
((i++))
done

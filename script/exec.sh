cat /dev/null > /var/log/hebergement/$1
/home/git/deployservice/$1 2>&1 | tee -a /var/log/hebergement/$1
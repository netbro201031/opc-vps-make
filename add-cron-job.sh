#get ip
pub_ip=$(wget -qO- https://ipecho.net/plain ; echo)
#add crn job
(crontab -l && echo "* * * * * curl http://$pub_ip/getocivps/index.php >> /var/www/html/getocivps/log.txt") | crontab -
#resetlog
(crontab -l && echo "0 0 * * * > /var/www/html/getocivps/log.txt") | crontab -

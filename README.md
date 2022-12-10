# opc-vps-make
Get OPC Vps 


01.Install Basic Requiments 
```
sudo wget https://raw.githubusercontent.com/netbro201031/opc-vps-make/main/part1.sh && sudo chmod +x part1.sh  && sudo ./part1.sh
```

02.Edit .env File 
📖 Guide >> (https://github.com/hitrov/oci-arm-host-capacity#general)

Save File 👉
Ctrl + X , Y , Enter 

03.Move Files into web directory 

```
mv /home/ubuntu/getocivps /var/www/html/
```

04.Add Cron Job 

```
sudo wget https://github.com/netbro201031/opc-vps-make/raw/main/add-cron-job.sh && sudo chmod +x add-cron-job.sh  && sudo ./add-cron-job.sh
```

05. Check Log File 

http://Your ip /getocivps/log.txt

for reset log file 
```
> /var/www/html/getocivps/log.txt
```

Auto Log Reset @ 00:00 Everyday
```
(crontab -l && echo "0 0 * * * > /var/www/html/getocivps/log.txt") | crontab -
```
06. If you want to edit files, goto 

```
cd /var/www/html/getocivps
```
*if you want to backup your system use this cmd.
```
rsync -aAXHv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/backup/*","/var/lib/dhcpcd/*","/lost+found"} / /backup
```
*Restore System 
```
rsync -aAXHv --delete /backup/ --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/backup/*","/var/lib/dhcpcd/*","/lost+found"} /
```
*View Size of Backup
```
sudo du -sh /backup
```
*Delete Backup
```
sudo rm -r /backup
```

#Thanks to , @hitrov
how wrote the main script 
https://github.com/hitrov/oci-arm-host-capacity

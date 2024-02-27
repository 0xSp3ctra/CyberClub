# Linux Privesc

## Accès à la machine

Lien de l'OVA : https://drive.google.com/file/d/1zDgc_wTrtkw0viIdDKNB5-h2z6yC5Kn2/view?usp=sharing

`cyber:cyber`

## 1 - Sudo rights abuse

Trouvez le binaire que vous pouvez utiliser avec **sudo**, et élevez vos privilèges afin de devenir root et trouver le flag dans /root/sudo_abuse

## 2 - Cronjob abuse

Une tâche **cronjob** semble exécuter le script **/dmz-backups/backup.sh**, investiguez et trouvez le moyen de devenir root et lire le flag dans /root/cronjob_abuse

## 3 - Special permissions

Le script python **mem_status.py** semble utiliser la librairie psutil, sur laquelle vous semblez avoir des droits spéciaux. Utilisez-les pour élever vos privilèges afin de devenir root et trouver le flag dans /root/python_hijacking

## Bonus

Le binaire de **nmap** semble avoir des permissions spéciales : 
- utilisez-le afin de lire le flag /root/nmap_flag/flag.txt
- trouvez une autre méthode pour devenir root et trouver l'autre flag

# Refs

https://cheatsheet.haax.fr/linux-systems/privilege-escalation/abusing_sudo_rights/
https://juggernaut-sec.com/cron-jobs-lpe/
https://mikadmin.fr/blog/linux-privilege-escalation-python-library-hijacking/
https://medium.com/analytics-vidhya/python-library-hijacking-on-linux-with-examples-a31e6a9860c8
https://synfin.net/papers/nmap-suid.txt
https://github.com/Anon-Exploiter/SUID3NUM
https://gtfobins.github.io/
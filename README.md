# gdrive_desktop_sync

This script is designed to provide a flexible backup to google drive.

To do this it uses the rclone software (free and opensource) from here:

https://rclone.org/ 

then i have a cronjob to run once and hour:

$ crontab -l
0 * * * * ~/useful_scripts/rclone_backup.sh

logs are written to the top level of your home directory (need to fix this properly)

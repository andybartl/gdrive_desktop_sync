#!/bin/bash
output_file="/home/andy/rclone_log.txt"
date=`date`

echo "Backup date: $date" | tee $output_file
for directory in Documents Downloads Expenses Pictures Templates useful_scripts
do
  echo "Backing up directory $directory" | tee -a $output_file
  rclone sync ~/$directory/ MyGoogleDrive:/$directory --progress 2>&1 | tee -a $output_file
done

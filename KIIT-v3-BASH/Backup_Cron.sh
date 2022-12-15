
##UN - UNTESTED - L15-12-22 - V1 - KIIT-V2-BASH
#!/bin/bash

# set the source and destination directories
source_dir="/path/to/source/folder"
destination_dir="/path/to/destination/folder"

# set the time trigger (e.g. every day at midnight)
time_trigger="0 0 * * *"

# create a backup of the source folder and copy it to the destination folder
echo "Creating backup of $source_dir"
cp -R $source_dir $destination_dir
echo "Backup created and copied to $destination_dir"

# set up the cron job to run the script at the specified time trigger
echo "Setting up cron job to run script at $time_trigger"
(crontab -l 2>/dev/null; echo "$time_trigger /path/to/script/backup.sh") | crontab -
echo "Cron job successfully set up"


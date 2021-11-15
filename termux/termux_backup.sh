# Note: If you have obtained root, you probably use root user to run this script.
cd /data/data/com.termux/files
log_file=/sdcard/termux-backup.log

# Relative path is required!
tar zcvf /sdcard/termux-backup.tar.gz home usr
flag=$?
log_date=`date`
if [ $flag ]; then
	echo $log_date success >> $log_file
else
	echo $log_date fail >> $log_file
fi

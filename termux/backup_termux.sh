cd /data/data/com.termux/files
log_file=/sdcard/backup_termux.log

# Relative path is required!
tar zcvf /sdcard/termux_backup.tar.gz home usr
flag=$?
log_date=`date`
if [ $flag ]; then
	echo $log_date success >> $log_file
else
	echo $log_date fail >> $log_file
fi

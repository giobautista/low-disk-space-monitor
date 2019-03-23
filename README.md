# low-disk-space-monitor
Monitor low disk space then send text notification via textbelt.com in bash/shell

### first, determine the threshold
find this line then modify accordingly, here I set it to send alert when disk space reached to 90% and over
```
if [ $used -ge 90 ]; then ...
```

### then modify these variables
```
phone='+15145769585'
key=YOURKEY
```

### make the script executable
```
chmod 775 sendAlert.sh
```

### add to cronjob every 5 minutes (change to how often you want to run the script)
```
crontab -e
```
add the following line;
```
*/5 * * * * sh /PATH/TO/SCRIPT/diskAlert.sh
```
then save, that's all!

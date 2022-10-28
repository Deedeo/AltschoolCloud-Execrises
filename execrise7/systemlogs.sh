#!/usr/bin/bash

# A bash Script to run at every hour , saving system(RAM) usage to a specified file at noon, the send the file contents to a specified email address. 

#Variable declaration
logPath=/home/vagrant/logs/ramUsage.log
timeCheck=$(date +%H%M)
EMAIL="daradeo4u@gmail.com"

# A function to check if the file path logPath exist,if it exist the function delete the file and a new file for the new day logs.
function Filecheck() {
        if [[ -e  $logPath ]]
then
        rm -rf $logPath
else
# this create a logPath file 
        touch $logPath
# print date into the logPath file        
        date >> $logPath
# print the system ram usage into the logPath file
        free -h >> $logPath
fi
}
# this condtion checks the time to know the exact time to send the systemlogs to the specified email
if [[ $timeCheck == 0000 ]]
then
        Checklog
        echo "HERE IS YOUR LOG REPORT" | mutt -s "TODAY'S RAM REPORT" -a $logPath -- $EMAIL
fi

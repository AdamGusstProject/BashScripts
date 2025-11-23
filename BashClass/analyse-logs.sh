#!/bin/bash


LOG_DIR="/home/agusst/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")



echo "analysing log files"
echo "=================="

echo -e "\nList of log files updated in last 24 hours"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -365)
echo "$LOG_FILES"

echo -e "\nsearching ERROR logs in application.log file"
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"


echo -e "\nNumber of ERROR logs found in application.log"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG_FILE"


echo -e "\nNumber of FATAL logs found in system.log"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nNumber of CRITICAL logs found in the system.log"
grep -c "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nCRITICAL logs in system file"
grep "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG_FILE"


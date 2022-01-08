@echo off
echo %date% %time% >> E:\logs\SQL.log
sqlcmd -S w5001.cforms.net  -U sa -P L3tm3in1011 -d CForms_Data_Dev -i "E:\SQLScripts\SendEmailNotification_Prod.sql" >> E:\logs\SQL.log
echo ------------------------ >> E:\logs\SQL.log

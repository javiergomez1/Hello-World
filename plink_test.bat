rem H:\apz\Putty\plink.exe -P 72 -pw Gomez7332! admin@server2.gomezmc.com:/from_zyme/Sales_Inventory_Feedout/TARGUS_GOALS_FEEDOUT*.csv -type f -mmin +1440

rem H:\apz\Putty\pscp.exe -P 72 -pw Gomez7332! admin@server2.gomezmc.com:/test/
rem H:\apz\Putty\pscp.exe -P 72 -pw Gomez7332! admin@server2.gomezmc.com:/home/admin/test/*  .

H:\apz\Putty\plink.exe -P 72 -pw Gomez7332! admin@server2.gomezmc.com find /home/admin/test/* -type f -mmin -60

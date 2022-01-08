REGEDIT4 

; @ECHO OFF
; CLS
; REGEDIT.EXE /S "%~f0"
; EXIT

[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI]

[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\AMPS]
"Driver"="C:\\Windows\\system32\\SQLSRV32.dll"
"Server"="s-us01-db02"
"Database"="AMPS"
"Trusted_Connection"="Yes"

[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\AnalyticCube]
"Driver"="C:\\Windows\\SysWOW64\\SQLSRV32.dll"
"Server"="s-us01-db02"
"Database"="Targusprod"
"Trusted_Connection"="Yes"

[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\Purchasing]
"Driver"="C:\\Windows\\SysWOW64\\SQLSRV32.dll"
"Server"="s-us01-db02"
"Database"="Purchasing"
"Trusted_Connection"="Yes"

[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\Purchasing SQL]
"Driver"="C:\\Windows\\SysWOW64\\SQLSRV32.dll"
"Server"="s-us01-db02"
"Database"="Purchasing SQL"
"Trusted_Connection"="Yes"


[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\Targusprod]
"Driver"="C:\\Windows\\SysWOW64\\SQLSRV32.dll"
"Server"="s-us01-db02"
"Database"="Targusprod"
"Trusted_Connection"="Yes"


[HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources]

"AMPS"="SQL Server"
"Targusprod"="SQL Server"
"AnalyticCube"="SQL Server"
"Purchasing"="SQL Server"
"Purchasing SQL"="SQL Server" 

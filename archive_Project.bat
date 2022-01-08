
:: Author: Javier Gomez
:: Date: 2020-12-20
:: Description: exports project data to CSV files


:: Create
:: ) create Inspections.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportInspections" –s "," –o "E:\batch\processing\Inspections.csv"


:: ) create Inspections.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportInspections" –s "," –o "E:\batch\processing\Inspections.csv"


:: ) create InspectionAttachments.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportInspectionAttachments" –s "," –o "E:\batch\processing\InspectionAttachments.csv"

:: ) create InspectionReferenceSubmittals.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportInspectionReferenceSubmittals" –s "," –o "E:\batch\processing\InspectionReferenceSubmittals.csv"


:: ) create DailyReports.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportDailyReports" –s "," –o "E:\batch\processing\DailyReports.csv"


:: ) create SubContractorActivity.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportSubContractorActivity" –s "," –o "E:\batch\processing\SubContractorActivity.csv"


:: ) create DailyReportInspectionMapping.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportDailyReportInspectionMapping" –s "," –o "E:\batch\processing\DailyReportInspectionMapping.csv"


:: ) create DailyReportAttachments.csv
SQLCMD –S .\SQLExpress01 –E –Q "EXEC CForms_UCI.dbo.sp_ExportDailyReportAttachments" –s "," –o "E:\batch\processing\DailyReportAttachments.csv"


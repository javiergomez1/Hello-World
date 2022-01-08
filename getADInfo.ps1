Clear-Host
### Get All users with EmployeeID that are not equal to "Test" ###

# Import the AD Module (Must be installed) 
import-module activedirectory

# Apply LDAP Filter (Can be copied from ADUC query) 
$LDAPFilter ="(employeeID=*)(!employeeID=Test)"

# LDAP Filter with Country "OR" expression
#LDAPFilter ="(employeeID=*)(!employeeID=Test)(!employeeID=Service)(!employeeID=OneNeck)(|(c=US)(c=CA))"

# Get the users dumped into a variable
#$Users = Get-ADUSer -LDAPFilter $LDAPFilter -properties displayName,givenName,sn,EmployeeID,description,title,mail,telephoneNumber,mobile,extensionAttribute13,extensionAttribute15,c,l,company,department,division,physicalDeliveryOfficeName,extensionAttribute3,st,whenCreated,LastLogonDate,msNPAllowDialin,userPrincipalName,manager | select-object displayName,givenName,sn,EmployeeID,description,title,mail,telephoneNumber,mobile,extensionAttribute13,extensionAttribute15,c,l,company,department,division,physicalDeliveryOfficeName,extensionAttribute3,st,userPrincipalName,manager,whenCreated,LastLogonDate,msNPAllowDialin,@{N='ManagerName';E={(Get-ADUser $_.Manager).Name}}

$Users = Get-ADUSer -LDAPFilter $LDAPFilter -properties sAMAccountName,UserAccountControl,displayName,givenName,sn,EmployeeID,description,title,mail,telephoneNumber,mobile,extensionAttribute13,extensionAttribute15,c,l,company,department,division,physicalDeliveryOfficeName,extensionAttribute3,st,whenCreated,LastLogonDate,msNPAllowDialin,userPrincipalName,manager | select-object sAMAccountName,UserAccountControl,displayName,givenName,sn,EmployeeID,description,title,mail,telephoneNumber,mobile,extensionAttribute13,extensionAttribute15,c,l,company,department,division,physicalDeliveryOfficeName,extensionAttribute3,st,userPrincipalName,manager,whenCreated,LastLogonDate,msNPAllowDialin,@{N='ManagerName';E={(Get-ADUser $_.Manager).Name}}

#UserAccountControl

# Show number of users returned
$Users.count

#@{N='Country';E={$_.c}}
#@{N='ManagerName';E={(Get-ADUser $_.Manager).Name}}

#Get Filename
$FileName = "c:\batch\ADInfo.csv"

# Dump to CSV
$Users | Export-Csv $FileName -NoTypeInformation

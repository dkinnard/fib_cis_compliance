# Install Carbon
Install-Module -Name Carbon -AllowClobber -Force

# Import Carbon
Import-Module Carbon

# Set the 'Deny access to this computer from the network' policy
Grant-Privilege -Identity 'Guest' -Privilege SeDenyNetworkLogonRight
Grant-CPrivilege -Identity 'Local account and member of Administrators group' -Privilege SeDenyNetworkLogonRight

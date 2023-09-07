# FIB Compliance Remediation for CIS Windows Server 2019 L1 - 2.2.21
This repo contains a solution to respond to the compliance scan ran against bastion1, but can also be used in future Windows Server 2019 implementations. 

## Instructions
Simply execute the PowerShell script `DenyNetLogin.ps1` contained in this directory.  This can be ran manually on the host, or added as a part of EC2 user data.

## Validation
After running the script, try to RDP back into the Windows host with the local admin account.  You should be greeted with the following error
![DenyLogon](https://github-production-user-asset-6210df.s3.amazonaws.com/17164728/266433841-0976b8ec-e0ad-4a91-aaaf-fb8b9c4f282e.png)

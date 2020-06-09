REM Do not change script name
REM This will run after sysprep to configure WinRM HTTPS with self-signed certificate
powershell.exe -ExecutionPolicy Bypass -NoProfile -NoLogo -File "C:\Windows\Setup\Scripts\Enable-WinRMForAnsible.ps1" -EnableCredSSP -GlobalHttpFirewallAccess -ForceNewSSLCert -SkipNetworkProfileCheck -CertValidityDays 3650 -Verbose
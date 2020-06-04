param(
    [string]$server_info_path = $env:server_info_path,
    [string]$vm_name = $env:vm_name
)

# Create the Server Info Path
if(!(Test-Path $env:server_info_path)){
    New-Item "$server_info_path" -Force | Out-Null
}

# Create Template Registry Info
New-ItemProperty -Path "$server_info_path" -Name Name -Value "$vm_name" -Force | Out-Null
New-ItemProperty -Path "$server_info_path" -Name Timestamp -Value (Get-Date -Format "dddd, yyyy/MM/dd HH:mm:ss K") -Force | Out-Null

# Display Info
Get-ItemProperty -Path "$server_info_path" | Select-Object * -ExcludeProperty PS* | Format-List
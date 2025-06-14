$sysmonPath = "C:\Tools\Sysmon\Sysmon64.exe"
$configPath = "C:\Tools\Sysmon\sysmonconfig.xml"

Write-Host "Installing Sysmon with config..."

Start-Process -FilePath $sysmonPath -ArgumentList "-accepteula -i $configPath" -Wait

Write-Host "Sysmon installed successfully!"





$winlogbeatPath = "C:\Tools\Winlogbeat"

Write-Host "Installing Winlogbeat..."

Start-Process "$winlogbeatPath\install-service-winlogbeat.ps1" -Wait

Copy-Item "C:\Tools\Winlogbeat\custom_winlogbeat.yml" "$winlogbeatPath\winlogbeat.yml" -Force

Start-Service winlogbeat

Write-Host "Winlogbeat service started and sending logs to Elasticsearch"


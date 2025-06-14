🖥️ On the Client VM (TestUser – Windows 10)
✅ Install Sysmon
powershell
Copy
Edit
# Navigate to Sysmon directory
cd "C:\Users\TestUser\Desktop\Sysmon"

# Install Sysmon with config
.\Sysmon64.exe -accepteula -i sysmonconfig.xml
📦 Install Winlogbeat
powershell
Copy
Edit
# Navigate to Winlogbeat directory
cd "C:\Users\TestUser\Desktop\Winlogbeat"

# Install Winlogbeat as a service
.\install-service-winlogbeat.ps1

# Start Winlogbeat service
Start-Service winlogbeat
🧪 Test Winlogbeat Configuration (Optional)
powershell
Copy
Edit
# Run this inside Winlogbeat folder
.\winlogbeat.exe test config -c .\winlogbeat.yml -e
🧠 Notes:
powershell
Copy
Edit
# Allow PowerShell scripts if they are blocked
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
Ensure all config files (winlogbeat.yml, sysmonconfig.xml) are correctly placed.

Check Event Viewer for logs to verify data is flowing.

Monitor in Kibana for events from Winlogbeat and Sysmon.
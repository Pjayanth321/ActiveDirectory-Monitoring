🛡️ 1. Least Privilege Principle
Created a TestUser account with limited privileges (not part of Domain Admins).

Used the Administrator account only for installation and configuration tasks.

🔐 2. Password Policy Enforcement
Enforced complex passwords in Active Directory Group Policy.

Ensured passwords expire after a set duration.

📁 3. Organizational Unit (OU) Segregation
Created a custom OU: JayLab Computers

Moved the client system to this OU for better policy management.

🔍 4. Monitoring & Logging with ELK Stack
Installed and configured Sysmon to capture detailed system activity (process creation, network connections, etc.).

Used Winlogbeat to forward logs to Elasticsearch.

Visualized logs and monitored system behavior using Kibana.

🧱 5. Windows Defender & Firewall
Verified that Windows Defender was active on both Domain and Client VMs.

Ensured Windows Firewall was running with proper rules.

🚫 6. Disabling Unnecessary Services
Disabled guest account.

Disabled SMBv1 (legacy protocol) to reduce vulnerability surface.

🔐 7. Secure RDP Access
Ensured RDP was enabled only when needed.

Used strong passwords for all users with RDP access.




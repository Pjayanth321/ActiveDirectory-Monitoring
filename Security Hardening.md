 🔐 Security Hardening – Active Directory Monitoring Lab (JayLab)

This document outlines the security best practices implemented in the JayLab environment to simulate a secure, enterprise-grade SOC setup.

---

 🛡️ 1. Least Privilege Principle

- Created a standard domain user: TestUser with *no administrative rights*
- Used the Administrator account *only for initial setup and configuration*
- Ensured users operate with the *least privilege* required

---

🔐 2. Password Policy Enforcement

- Enforced *complex password requirements* through Group Policy
- Enabled *password expiration* for regular password rotation
- Prevented reuse of previous passwords using *history enforcement*

---
 🗂️ 3. Organizational Unit (OU) Segregation

- Created a dedicated OU: JayLab Computers
- Moved domain-joined clients to this OU
- Applied security-specific GPOs only to the targeted OU for better control

---

 🔍 4. Monitoring & Logging with ELK Stack

- Installed *Sysmon* for detailed endpoint telemetry (process, network, registry)
- Configured *Winlogbeat* to forward both Windows and Sysmon logs
- Logs indexed by *Elasticsearch* and visualized in *Kibana*

---
 🧱 5. Windows Defender & Firewall

- Verified *Windows Defender* is running on all VMs
- Ensured *Windows Firewall* is active with default rules
- Allowed only essential inbound/outbound traffic for each system role

---

 🚫 6. Disabling Unnecessary Services

- *Disabled Guest account* to prevent anonymous access
- *Disabled SMBv1*, a deprecated and vulnerable protocol
- Reduced attack surface by minimizing legacy components

---

🔐 7. Secure RDP Access

- Enabled *RDP only during configuration*
- Used *strong passwords* for all accounts with RDP access
- Blocked unnecessary remote access ports at the firewall level

---
 ✅ These security measures align with basic hardening principles for beginner SOC labs and can be expanded further for red vs. blue team simulation environments.
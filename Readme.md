# 🛡️ Active Directory Monitoring Lab (JayLab)

This project demonstrates how to set up and monitor an Active Directory environment using open-source tools like Sysmon, Winlogbeat, Elasticsearch, and Kibana. The objective is to simulate a real-world SOC (Security Operations Center) scenario where event logs are collected, forwarded, and visualized for threat detection and monitoring.

---

## 📁 Lab Overview

- **Domain Name**: `JayLab.local`
- **Domain Controller VM**: Hosts Active Directory, Elasticsearch, and Kibana
- **Client VM**: Domain-joined Windows 10 machine with Sysmon + Winlogbeat
- **Monitoring Stack**: Winlogbeat ➜ Elasticsearch ➜ Kibana

---

## 🖥️ Environment Setup

### 1. Domain Controller (JayLab.local)
- Windows Server (Active Directory configured)
- Elasticsearch installed and running
- Kibana installed and running (for log visualization)

### 2. Client Machine (TestUser)
- Windows 10 VM joined to the domain
- Sysmon installed for detailed system logging
- Winlogbeat installed and configured to forward logs to Elasticsearch

---

## 🔧 Tools & Configurations

| Tool         | Role                                            |
|--------------|--------------------------------------------------|
| **Active Directory** | Centralized authentication and domain management |
| **Sysmon**     | Captures detailed system activity (process creation, network connections, etc.) |
| **Winlogbeat** | Forwards Windows event logs and Sysmon logs to Elasticsearch |
| **Elasticsearch** | Stores and indexes logs |
| **Kibana**     | Visualizes logs with dashboards and queries |

---

## 🔗 Data Flow

Sysmon (Client)
↓
Winlogbeat (Client)
↓
Elasticsearch (Domain Controller)
↓
Kibana (Domain Controller)


---

## 📸 Screenshots

All screenshots are available in the `screenshots/` folder, including:
- Domain join process
- Sysmon installation
- Winlogbeat configuration
- Kibana dashboard views

---

## 🔐 Security Hardening

Refer to `SecurityHardening.md` for details on:
- Local group policy changes
- Disabling guest accounts
- Password policy enforcement
- Firewall & RDP settings

---

## 📁 Files in This Repository

| File / Folder            | Description                                      |
|--------------------------|--------------------------------------------------|
| `README.md`              | This project overview and documentation         |
| `Networkdiagram.yml`     | Network diagram to be added later                |
| `SecurityHardening.md`   | Steps taken to harden the system                 |
| `screenshots/`           | Folder containing project screenshots            |

---

## 📌 Notes

- This project does **not** use Splunk, Linux, or red team tools like Kali.
- The focus is on **setting up and monitoring a clean AD environment** using Elastic Stack tools.
- Ideal for beginner SOC analysts or cybersecurity students.

---

## 📈 Future Improvements (Optional)

- Add simulated attacks using Kali Linux or Atomic Red Team
- Integrate Sigma rules for detection use cases
- Use Logstash for custom parsing pipelines

---

## ✍️ Author

**Jay_Life**  
Beginner Cybersecurity Enthusiast on a mission to build strong blue team skills and land a SOC Analyst role.

---

## 📚 Credits

- [Elastic Stack](https://www.elastic.co/)
- [SwiftOnSecurity Sysmon Config](https://github.com/SwiftOnSecurity/sysmon-config)
- [Winlogbeat Documentation](https://www.elastic.co/guide/en/beats/winlogbeat/current/index.html)

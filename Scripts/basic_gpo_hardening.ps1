

New-GPO -Name "JayLab Security Baseline" | New-GPLink -Target "OU=JayLab Computers,DC=JayLab,DC=local"

Set-GPRegistryValue -Name "JayLab Security Baseline" -Key "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" -ValueName "EnableFirewall" -Type DWord -Value 1

Set-GPOption -Name "JayLab Security Baseline" -MinimumPasswordLength 12




Set-ExecutionPolicy Unrestricted #removes restrictions on ps1 script exec
New-NetFirewallRule -DisplayName 'HTTP-Inbound' -Profile @('Domain', 'Private') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('80', '443') #allows http traffic for persistence

New-NetFirewallRule -DisplayName 'DNS-Inbound' -Profile @('Domain', 'Private') -Direction Inbound -Action Deny -Protocol TCP -LocalPort @('53', '1723') #blocks all DNS and AD traffic to box


# Red Team vs Blue Team Training

A competitive cybersecurity exercise for KYPO Cyber Range Platform.

## Overview

This training provides a realistic Red Team vs Blue Team exercise where:

- **Red Team (1 system)**: Attempts to compromise a corporate network
- **Blue Team (4 systems)**: Defends, detects, and responds to intrusions

## Topology

```
                    EXTERNAL                         SOC NETWORK
                   10.0.0.0/24                       172.16.0.0/24
                       │                                  │
                  [ATTACKER]                        [SOC-ANALYST]
                  10.0.0.100                         172.16.0.10
                       │                                  │
                       └──────────[EDGE-ROUTER]───────────┘
                                       │
                              DMZ 192.168.1.0/24
                                       │
                                 [WEBSERVER]
                                 192.168.1.10
                                       │
                            INTERNAL 192.168.2.0/24
                                   /       \
                           [DATABASE]    [FIREWALL]
                           192.168.2.20  192.168.2.1
```

## Systems

| System | Role | IP Address | Team |
|--------|------|------------|------|
| attacker | Kali Linux attack box | 10.0.0.100 | 🔴 Red |
| soc-analyst | SOC workstation | 172.16.0.10 | 🔵 Blue |
| webserver | Vulnerable web app | 192.168.1.10 | 🔵 Blue |
| database | Sensitive data store | 192.168.2.20 | 🔵 Blue |
| firewall | Network IDS | 192.168.1.254 | 🔵 Blue |

## Usage

1. Import this repository into KYPO Portal via **Definitions → Import from Git**
2. Create a Pool using this definition
3. Allocate sandbox instances
4. Create a Training Run and assign users

## License

MIT License
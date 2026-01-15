# Auth Log Analyzer

Bash script for monitoring and analyzing `/var/log/auth.log` for security threats.

## Features
- Detects brute force attacks by IP address
- Checks for suspicious user login attempts
- Monitors logins during off-hours (22:00-06:00)
- Sends email alerts (requires mail server setup)
- Logs all alerts to `/var/log/auth_alerts.log`

## Usage
```bash
sudo ./log_analyzer.sh

There is a small basic script in the dev branch.

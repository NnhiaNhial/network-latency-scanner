# Network Latency Scanner

A simple Bash script to scan a subnet by pinging each IP address and measuring network latency. This tool helps discover active devices on a local network and check their response times.

---

## Features

- Performs a ping sweep across a specified subnet.
- Detects which hosts are online.
- Measures latency (ping response time) for each live host.
- Outputs results to the terminal for quick network status checks.

---

## How It Works

The script loops through all possible IP addresses in a subnet (default: 192.168.1.1 to 192.168.1.254). For each IP, it sends ICMP ping requests and checks if there is a reply within a short timeout. If the host responds, the script prints the IP and its average ping time.

---

## Usage

1. Clone or download this repository.
2. Make the script executable:
   ```bash
   chmod +x ping_sweep.sh

Run the script:

bash

./ping_sweep.sh

By default, it scans the subnet 192.168.1.*. You can modify the subnet in the script as needed.

# How to Customize

Change the subnet by editing the subnet variable in ping_sweep.sh.

Adjust the ping count or timeout inside the ping command in the script.

Add logging or output redirection to save scan results.

Extend the script with more options for flexible scanning.

# Why Use This?

Quickly identify active devices on your local network.

Monitor network latency and identify slow or unreachable hosts.

Practice Bash scripting and networking automation.

Useful for network admins, engineers, and learners preparing for certifications like CCNA.

# Requirements

Bash shell (Linux, macOS, WSL, etc.)

ping command available in your environment.

# Example Output

192.168.1.1 is up, average latency: 1.23 ms
192.168.1.5 is up, average latency: 0.85 ms
192.168.1.20 is up, average latency: 2.10 ms

# License
MIT License

# Author
NnhiaNhial (Big-Zoo)

Feel free to reach out if you want to collaborate or improve the script!



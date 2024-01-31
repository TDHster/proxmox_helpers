Certainly! Here's a description you can use for your GitHub repository:

---

# Proxmox Resource Usage Helper

This script provides a convenient way to monitor and display resource usage (memory and CPU cores) of virtual machines on a Proxmox Virtual Environment (Proxmox VE) server directly from the console.

## Features

- Counts total memory usage and displays it in gigabytes.
- Counts total CPU cores usage.
- Shows available system resources.
- Single loop for efficiency.

## Requirements

- Proxmox VE server
- Bash shell

## Usage

1. Clone the repository or copy the script to your Proxmox VE server.
2. Give executable rights if needed
```bash
chmod +x resource_usage.sh
```
3. Run the script to view the resource usage information.

```bash
./resource_usage.sh
```

## Example Output

```
Start counting resources of running virtual machines...
Memory used by VMs: 16.50GB of 32.00GB available.
Cores used by VMs: 8 of 12 available.
```

Feel free to use and customize this script to suit your specific needs!

---

Adjust the content as needed and feel free to add more sections or details based on your preferences.

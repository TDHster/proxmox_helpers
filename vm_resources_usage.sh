#!/bin/bash

total_memory=0
total_cores=0

all_available_memory_gb=$(free -m | awk '/^Mem:/ {printf "%.2f", $2/1024}')
all_available_cores=$(nproc)

echo -n "Start counting resources of running virtual machines."

# Iterate over VMIDs
for vmid in $(qm list | grep -v stopped | awk '$1 ~ /^[0-9]+$/ {print $1}'); do
    memory=$(qm config $vmid | grep 'memory:' | awk '{print $2}')
    cores=$(qm config $vmid | grep 'cores:' | awk '{print $2}')

    total_memory=$((total_memory + memory))
    total_cores=$((total_cores + cores))

    echo -n "."
done

total_memory_gb=$(printf "%.2f" $(echo "$total_memory/1024" | bc -l))

echo
echo "Memory used by VMs: ${total_memory_gb}GB of ${all_available_memory_gb}GB"
echo "Cores used by VMs: $total_cores of $all_available_cores available."

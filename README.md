# GPU Monitoring Script

This repository contains a simple GPU monitoring script for mutliple heterogeneous GPU servers.

## Description

When there's multiple heterogeneous GPU servers, it was quite inconvenient to ssh into each server and use nvidia-smi to see which GPUs were idle.
This script simplifies the process by only displaying the utilization and memory information for all the GPUs on each server.

## Requirements

- sshpass
- This script relies on `nvidia-smi`

## How to Use

Run the script from the command line using bash:
    ```bash
    bash monitor_gpus.sh
    ```

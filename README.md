# GPU Monitoring Script

This repository contains a simple GPU monitoring script for mutliple heterogeneous GPU servers.

## Description

When there's multiple heterogeneous GPU servers, it was quite inconvenient to ssh into each server and use nvidia-smi to see which GPUs were idle.
This script simplifies the process by only displaying the utilization and memory information for all the GPUs on each server.

<img width="419" alt="output_example" src="https://github.com/mit2400/Monitor-multi-GPU-servers/assets/16743362/8670cbff-2ba1-4b5b-9f3c-4b4e50f84012">

## Requirements

- sshpass
- This script relies on `nvidia-smi`

## How to Use

Run the script from the command line using bash:
    ```bash
    bash monitor_gpus.sh
    ```

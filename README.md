# Docker Network Restriction Setup

This repository contains a Docker setup to configure iptables rules for network restrictions in Docker containers. It includes a `docker-compose.yml` file and a shell script `iptables-setup.sh` that is used to configure iptables rules on the host machine.

## Project Overview

- **`docker-compose.yml`**: Defines two services:
  1. **iptables-setup**: A container that runs a shell script to configure iptables on the host.
  2. **test-container**: A simple Ubuntu container that will be subjected to the network restrictions set by iptables.

- **`iptables-setup.sh`**: A script that configures iptables rules to restrict network access from specific containers (based on their IP address).

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://gitlab.com/your-username/docker-restrict-network.git
   cd docker-restrict-network
   
2. Modify the docker-compose.yml and iptables-setup.sh files if necessary, depending on your network configuration and container setup.

3. Build the Docker image (if needed): If you're using a custom image for iptables-setup, ensure it's built before running the docker-compose commands.
```bash
docker build -t harshadineth/iptables-image .

4. Start the services: Run the following command to bring up the services defined in the docker-compose.yml:
```bash
docker-compose up -d

5.Verify the iptables rules: The iptables-setup container will run the iptables-setup.sh script to apply the iptables rules on the host. You can check the applied rules by running:
```bash
sudo iptables -L -n -v

   

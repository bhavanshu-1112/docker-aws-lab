FROM gitpod/workspace-full

# Install Docker (Docker-in-Docker)
USER root

RUN sudo apt-get update && sudo apt-get install -y \
    docker.io \
    unzip \
    curl \
    && apt-get clean

# Add your user to docker group
RUN sudo usermod -aG docker gitpod

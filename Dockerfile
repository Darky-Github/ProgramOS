# Use Ubuntu LTS as the base image for stability
FROM ubuntu:lts

# Set non-interactive frontend for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update and install essential tools
RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    neovim \
    nano \
    gcc \
    g++ \
    curl \
    wget \
    && apt-get clean

# Install C# Runtime (lightweight .NET Core)
RUN wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y aspnetcore-runtime-6.0

# Set up basic working directories for projects
RUN mkdir -p /workspace/{c,cplusplus,cs}

# Add a default command to keep the container running
CMD ["bash"]

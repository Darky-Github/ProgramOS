# Base image
FROM debian:stable-slim

# Maintainer metadata
LABEL maintainer="yourname@example.com"

# Set working directory
WORKDIR /programos

# Update system and install tools
RUN apt-get update && apt-get install -y \
    nano \
    vim \
    emacs \
    micro \
    build-essential \
    curl \
    git \
    wget \
    man \
    # Install additional code editors
    joe \
    ne \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Kilo (custom terminal editor written in C)
RUN git clone https://github.com/antirez/kilo.git /kilo && \
    cd /kilo && \
    make && \
    cp kilo /usr/local/bin/ && \
    cd / && rm -rf /kilo

# Create directories for usage
RUN mkdir -p /programos/files /programos/workspaces

# Expose port if necessary
EXPOSE 8080

# Default command
CMD ["bash"]


# Use Ubuntu as base image
FROM ubuntu:latest

# Set environment variables to disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    xfce4 xfce4-goodies \
    vim neovim nano \
    sublime-text \
    code \
    geany \
    wine64 wine32 \
    libreoffice \
    gnome-software \
    rclone \
    && apt-get clean

# Install GNOME extensions (if using GNOME)
RUN apt-get install -y gnome-shell-extension-dash-to-dock

# Set up the desktop environment
RUN echo "startxfce4" > ~/.xinitrc

# Set up Wine for Windows apps (optional)
RUN winecfg

# Set up Rclone for cloud storage (Google Drive, OneDrive)
# Rclone configuration should be done manually by the user

# Expose necessary ports for X11 (for GUI) or VNC if needed
EXPOSE 5900

# Default command to run the desktop environment
CMD ["startxfce4"]

# Use Ubuntu "devel" branch for unstable releases
FROM ubuntu:devel

# Set non-interactive frontend for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update and install essential tools
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 python3-pip \
    ruby-full \
    perl \
    git \
    curl \
    wget \
    lynx \
    default-jdk \
    nodejs npm \
    nano \
    vim \
    emacs \
    micro \
    joe \
    ne \
    htop \
    openssh-client \
    software-properties-common \
    libglib2.0-bin \
    libnss3 \
    libxss1 \
    xdg-utils \
    && apt-get clean

# Install C# and .NET Core SDK
RUN wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-6.0

# Add VS Code installation support
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/microsoft.gpg && \
    add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
    apt-get update && \
    apt-get install -y code

# Add ability to install GUI apps (e.g., taskbar simulation)
RUN apt-get install -y \
    x11-apps \
    fluxbox \
    tint2

# Create directories for programming projects
RUN mkdir -p /workspace/{python,ruby,perl,c,cplusplus,cs,java,javascript}

# Add a taskbar simulation script (using tint2)
COPY taskbar.sh /usr/local/bin/taskbar
RUN chmod +x /usr/local/bin/taskbar

# Set the default command to launch the taskbar and Fluxbox
CMD ["/usr/local/bin/taskbar"]

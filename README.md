# ProgramOS

**ProgramOS** is a minimal, text-based operating system optimized for programmers. It is designed to run inside a Docker container and comes pre-installed with essential programming tools and terminal-based text editors.

## Features
- Lightweight and optimized for programming.
- Includes the following terminal-based text editors:
  - Nano
  - Vim
  - Emacs
  - Micro
  - Joe
  - Ne (Nice Editor)
  - Kilo (Tiny C-based editor)
- Custom commands for file system management:
  - `mkdir`: Create directories.
  - `cf`: Create blank files (requires an extension).
  - `cd`: Change directories.
  - `ls`: List files and directories.

## Installation

### Prerequisites
Ensure Docker is installed on your system. You can download Docker from [here](https://www.docker.com/).

### Build the Docker Image
Clone this repository and navigate to the directory containing the `Dockerfile`. Then run:
```bash
docker build -t programos .

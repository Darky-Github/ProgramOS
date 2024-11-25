# ProgramOS Developer Edition

**ProgramOS Developer Edition** is an unstable, text-based OS designed for developers. It is based on Ubuntu's unstable branch and includes pre-installed programming tools, editors, and the ability to install GUI applications.

## Features
- **Programming Language Support**: Python, Ruby, Perl, C, C++, C#, Java, JavaScript.
- **Pre-installed Editors**: vim, nano, emacs, micro, joe, ne, and Visual Studio Code.
- **GUI Application Support**: Simulated taskbar and launcher using Fluxbox and Tint2.
- **Pre-configured Development Environment**: Directories for different languages.

## Installation

### Build the Docker Image
```bash
docker build -t programos-dev .

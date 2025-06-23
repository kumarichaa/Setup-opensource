UERANSIM Installation Guide
This document is based on the official UERANSIM installation guide:
website link: https://github.com/aligungr/UERANSIM/wiki/Installation

1. Environment Setup
Use a Linux-based system (Debian/Ubuntu recommended).

If you do not have a Linux OS, create a virtual machine on Windows or macOS.

I have set up an Ubuntu environment locally and used that for this installation.
Login with user:
$ sudo su
Password: [Your Password]

2. Update Your System
sudo apt update
3. Install UERANSIM Dependencies
sudo apt install make
sudo apt install gcc
sudo apt install g++
sudo apt install libsctp-dev lksctp-tools
sudo apt install iproute2
sudo snap install cmake --classic

4. Build UERANSIM from Source
Specify the location where you want to install UERANSIM. For example:
cd /usr/local/src/
git clone https://github.com/aligungr/UERANSIM

5. Compile UERANSIM
cd /usr/local/src/UERANSIM/
make

6. Verify Installation
For testing purposes, run:
make install

7. After Successful Compilation
The compiled binaries will be located in the UERANSIM/build/ directory:

nr-cli: CLI tool for 5G UE and RAN interaction.

nr-gnb: Main executable for 5G gNodeB (gNB).

nr-ue: Main executable for 5G UE.

nr-binder: Tool to enable internet connectivity for UE.

libdevbnd.so: Dynamic library used by nr-binder.



Open5GS Installation Guide
This document is based on the official Open5GS installation guide:
Website link: https://open5gs.org/open5gs/docs/guide/02-building-open5gs-from-sources/

Installation Methods
There are two ways to install Open5GS:

A. Building from Source
This method involves downloading the actual source code of Open5GS (from GitHub or official repositories) and manually compiling it on your system.

B. Using APT
This method uses the APT package manager to install Open5GS with precompiled binaries—similar to any standard apt install process.

1. Environment Setup
Use a Linux-based system (Debian/Ubuntu recommended).

If you don’t have Linux, you can create a virtual machine on Windows or macOS.

In this guide, we use a local Ubuntu environment.
$ sudo su
# Enter your password
2. Update Your System
sudo apt update
3. Install MongoDB
Follow the official MongoDB installation guide for Ubuntu:
Website link: https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/

4. Install Dependencies
sudo apt install python3-pip python3-setuptools python3-wheel ninja-build build-essential flex bison git cmake \
libsctp-dev libgnutls28-dev libgcrypt-dev libssl-dev libmongoc-dev libbson-dev libyaml-dev \
libnghttp2-dev libmicrohttpd-dev libcurl4-gnutls-dev libtins-dev libtalloc-dev meson
5. Building from Source
    Specify the location where you want to install open5gs. For example:
    cd /usr/local/src/
    git clone https://github.com/open5gs/open5gs
    cd open5gs
    meson build --prefix=`pwd`/install
    ninja -C build
    Run Basic Tests
    ./build/tests/attach/attach                # For EPC Only
    ./build/tests/registration/registration    # For 5G Core Only
    Run All Tests
    cd build
    meson test -v
    Install Open5GS
    cd build
    ninja install
    cd ../
6. Installing Using APT
    Add Repository and Install Open5GS
    sudo add-apt-repository ppa:open5gs/latest
    sudo apt update
    sudo apt install open5gs
    Install the Open5GS WebUI
    Step 1: Download and Import NodeSource GPG Key
    sudo apt update
    sudo apt install -y ca-certificates curl gnupg
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    Step 2: Add the Node.js Repository
    NODE_MAJOR=20
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | \
    sudo tee /etc/apt/sources.list.d/nodesource.list
    Step 3: Update and Install Node.js
    sudo apt update
    sudo apt install nodejs -y
    Step 4: Install Open5GS WebUI
    curl -fsSL https://open5gs.org/open5gs/assets/webui/install | sudo -E bash -

Notes
When using APT to install Open5GS, all necessary systemd service files are created automatically.

When building from source, you must manually create systemd service files for convenience and automatic startup.
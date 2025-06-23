UERANSIM INSTALLATION

I make this document using UERANSIM official website
website link: https://github.com/aligungr/UERANSIM/wiki/Installation

1. Installation UERANSIM
    . Turn on your Linux based System debian/ubuntu as well as if you don't have LINUX OS then Use You need to make virtual machine on windows/mac OS
I have setup ubuntu environment on local so I used it and set on that
Login with user -- sudo su
password: Your Password

2. update your system
cmd: sudo apt update

3. Install all dependency related to UERANSIM
sudo apt install make
sudo apt install gcc
sudo apt install g++
sudo apt install libsctp-dev lksctp-tools
sudo apt install iproute2
sudo snap install cmake --classic


4. Build from source UERANSIM
specifies your desired location to install UERANSIM
e.g. cd /usr/local/src/  
git clone https://github.com/aligungr/UERANSIM 

5. Go to UERANSIM
e.g. cd /usr/local/src/UERANSIM/
cmd: make

6. For test Purpose Check everything is installed successfully or not 
cmd: make install

7. 
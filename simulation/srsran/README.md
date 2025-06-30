$$$ Open5gs with srsran ZeroMQ(virtual RF)


Install dependency 
$ apt install build-essential cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev libzmq3-dev

$ apt install gcc-11 g++-11

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 11 --slave /usr/bin/g++ g++ /usr/bin/g++-11
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 13 --slave /usr/bin/g++ g++ /usr/bin/g++-13

update-alternatives --config gcc
gcc -v
git clone https://github.com/srsran/srsRAN_4G.git

$ cd srsRAN_4G
$ mkdir build
$ cd build
$ cmake ../ -DENABLE_RF_PLUGINS=OFF
$ make -j`nproc`

$ cd srsRAN_4G/srsenb
$ cp enb.conf.example ../build/srsenb/enb.conf
$ cp rr.conf.example ../build/srsenb/rr.conf
$ cp rb.conf.example ../build/srsenb/rb.conf
$ cp sib.conf.example ../build/srsenb/sib.conf


# cd srsRAN_4G/srsue
# cp ue.conf.example ../build/srsue/ue.conf

cd srsRAN_4G/srsenb
cp enb.conf.example ../build/srsenb/enb.conf
cp rr.conf.example ../build/srsenb/rr.conf
cp rb.conf.example ../build/srsenb/rb.conf
cp sib.conf.example ../build/srsenb/sib.conf
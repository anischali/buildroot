Fetch:

Standalone:

git clone https://github.com/anischali/buildroot.git

cd buildroot

git clone git://git.buildroot.net/buildroot

Using repo:

repo init -u https://github.com/anischali/manifests.git -b main

repo sync -m bpi_h3_m2_zero.xml

Build:

docker-compose -f buildroot.yml build

docker-compose -f buildroot.yml run buildroot

make BR2_EXTERNAL=../external/bpi-h3-m2-zero bananapi_m2_h3_zero_defconfig

make -j 16

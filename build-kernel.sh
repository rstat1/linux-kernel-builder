VERSION_PREFIX="v5.x"
LATEST_VERSION="5.0.5"

mkdir kernel-build
wget https://cdn.kernel.org/pub/linux/kernel/${VERSION_PREFIX}/linux-${LATEST_VERSION}.tar.xz
mv linux-${LATEST_VERSION}.tar.xz kernel-build/
cd kernel-build
tar xJf linux-${LATEST_VERSION}.tar.xz

cp ../.config linux-${LATEST_VERSION}/
cd linux-${LATEST_VERSION}
make -j12
cp vmlinux ../

make uImage modules -j$(nproc) 
mkdir -p ../nanopi2_uImage_modules/boot
INSTALL_MOD_PATH=../nanopi2_uImage_modules make modules_install
cp ./arch/arm/boot/uImage ../nanopi2_uImage_modules/boot/
tar czpf ../nanopi2_uImage_modules.tar.gz ../nanopi2_uImage_modules
rm -r ../nanopi2_uImage_modules

shopt -s extglob

rm -rf include/*
rm -rf package/*
rm -rf target/linux/generic/*
rm -rf target/linux/x86/*

git_clone_path 6.12 https://github.com/namiltd/openwrt include include
git_clone_path 6.12 https://github.com/namiltd/openwrt package package
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/generic target/linux/generic
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/x86 target/linux/x86
wget -N https://raw.githubusercontent.com/mgz0227/Openwrt_6.12/main/target/linux/x86/Makefile -P include/target/linux/x86

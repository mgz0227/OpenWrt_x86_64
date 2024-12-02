shopt -s extglob

rm -rf include/*

rm -rf target/linux/generic/*
rm -rf target/linux/x86/*

rm -rf package/kernel/nat46
rm -rf package/kernel/nat46/Makefile


rm -rf package/devel/perf/*
rm -rf package/devel/perf

wget -N https://patch-diff.githubusercontent.com/raw/openwrt/openwrt/pull/16547.patch  -P devices/common/patches/

wget -N https://raw.githubusercontent.com/mgz0227/Openwrt_6.12/main/target/linux/x86/Makefile -P target/linux/x86


wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/include/kernel-6.12 -P include

cat target/linux/x86/Makefile

cd feeds/packages

git_clone_path main https://github.com/openwrt/openwrt libs/libtraceevent

cd ../../

sed -i '/$(curdir)\/compile:/c\$(curdir)/compile: package/opkg/host/compile' package/Makefile


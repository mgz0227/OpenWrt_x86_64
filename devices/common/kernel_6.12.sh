shopt -s extglob

rm -rf include/*

rm -rf target/linux/generic/*
rm -rf target/linux/x86/*


rm -rf package/devel/perf/*
rm -rf package/devel/perf

rm -rf package/kernel/linux/modules/*
git_clone_path 6.12 https://github.com/namiltd/openwrt include include
git_clone_path 6.12 https://github.com/namiltd/openwrt package package
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/generic target/linux/generic
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/x86 target/linux/x86
git_clone_path 6.12 https://github.com/namiltd/openwrt package/kernel/linux/modules package/kernel/linux/modules

wget -N https://raw.githubusercontent.com/openwrt/openwrt/openwrt-23.05/package/devel/perf/Makefile -P package/devel/perf
wget -N https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/libs/libtraceevent/Makefile -P package/libs/libtraceevent

wget -N https://raw.githubusercontent.com/mgz0227/Openwrt_6.12/main/target/linux/x86/Makefile -P target/linux/x86
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c -P package/kernel/gpio-button-hotplug/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-adsl-mei/src/drv_mei_cpe.c -P package/kernel/lantiq/ltq-adsl-mei/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-atm/src/ltq_atm.c -P package/kernel/lantiq/ltq-atm/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c -P package/kernel/lantiq/ltq-deu/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c -P package/kernel/lantiq/ltq-ptm/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c -P package/kernel/lantiq/ltq-ptm/src
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/ubootenv-nvram/src/ubootenv-nvram.c -P package/kernel/ubootenv-nvram/src

wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/include/kernel-6.12 -P include

cat target/linux/x86/Makefile

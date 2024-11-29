shopt -s extglob

rm -rf include/*

rm -rf target/linux/generic/*
rm -rf target/linux/x86/*

rm -rf package/kernel/linux/modules/*
git_clone_path 6.12 https://github.com/namiltd/openwrt include include
git_clone_path 6.12 https://github.com/namiltd/openwrt package package
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/generic target/linux/generic
git_clone_path 6.12 https://github.com/namiltd/openwrt target/linux/x86 target/linux/x86
git_clone_path 6.12 https://github.com/namiltd/openwrt package/kernel/linux/modules package/kernel/linux/modules



wget -N https://raw.githubusercontent.com/mgz0227/Openwrt_6.12/main/target/linux/x86/Makefile -P target/linux/x86

wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-adsl-mei/src/drv_mei_cpe.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-atm/src/ltq_atm.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-deu/src/ifxmips_deu.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_adsl.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/lantiq/ltq-ptm/src/ifxmips_ptm_vdsl.c
wget -N https://raw.githubusercontent.com/namiltd/openwrt/6.12/package/kernel/ubootenv-nvram/src/ubootenv-nvram.c



cat target/linux/x86/Makefile


# 克隆 coolsnowwolf/lede 仓库的 master 分支，路径根据实际需求调整
git_clone_path master https://github.com/coolsnowwolf/lede target/linux/x86/files target/linux/x86/patches-6.12

# 克隆 mgz0227/Openwrt_6.12 仓库的 main 分支，路径调整为包的路径
git_clone_path main https://github.com/mgz0227/Openwrt_6.12 package package

# 克隆 mgz0227/Openwrt_6.12 仓库的 main 分支，目标路径为 target/linux/x86
git_clone_path main https://github.com/mgz0227/Openwrt_6.12 target/linux/x86 target/linux/x86

# 克隆 mgz0227/Openwrt_6.12 仓库的 main 分支，目标路径为 target/linux/generic
git_clone_path main https://github.com/mgz0227/Openwrt_6.12 target/linux/generic target/linux/generic

# 下载 Makefile 文件到正确的路径

wget -N https://raw.githubusercontent.com/mgz0227/Openwrt_6.12/main/target/linux/x86/Makefile -P target/linux/x86

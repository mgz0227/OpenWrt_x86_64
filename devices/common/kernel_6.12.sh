shopt -s extglob

rm -rf include/*
rm -rf package/*
rm -rf target/linux/generic/*
rm -rf target/linux/x86/*
mv -rf devices/x86_64/files/include/* include
mv -rf devices/x86_64/files/package/* package
mv -rf devices/x86_64/files/target/linux/generic/* target/linux/generic
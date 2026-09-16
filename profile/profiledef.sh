#!/usr/bin/env bash
iso_name="zarchlinux"
iso_label="ZARCHLINUX_ISO"
iso_publisher="Zachary Hales <zac@ztchary.net>"
iso_application="zarch"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso' 'bootstrap')
bootmodes=('uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlzma,109' -E 'ztailpacking')
bootstrap_tarball_compression=(zstd -c -T0 --long -19)
sfs_comp="zstd"
sfs_opts=("-Xcompression-level" "19")
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/usr/local/bin/zarchinstall"]="0:0:755"
)

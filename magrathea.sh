# i2c access for matt, for openrgb
cat > /etc/udev/rules.d/99-matt-i2c-access.rules << EOF
KERNEL=="i2c-*" SUBSYSTEM=="i2c-dev", OWNER="matt", GROUP="matt"
EOF

# LifeCam default exposure
cat > /etc/udev/rules.d/99-lifecam-settings.rules << EOF
SUBSYSTEM=="video4linux", KERNEL=="video[0-9]*", ATTR{index}=="0", RUN+="/usr/bin/v4l2-ctl -d $devnode --set-ctrl=brightness=100"
EOF

# Sadly stuck on the blob driver
cat > /etc/modprobe.d/nvidia.conf << EOF
blacklist nouveau
EOF

# LifeCam uses too much USB bw, enlarge buffer
cat > /etc/modprobe.d/uvcvideo.conf << EOF
options uvcvideo quirks=0x100
EOF

# OpenRGB needs more i2c access (i2c-piix4 is auto-detected)
cat > /etc/modules-load.d/openrgb.conf << EOF
i2c_dev
EOF

# TODO change /etc/default/grub to eg have menu

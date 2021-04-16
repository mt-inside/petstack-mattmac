# AUR
it87-dkms-git

/etc/sensors.d/b550.conf

mkdir /etc/systemd/logind.conf.d
# Spurious power- and suspend-button events, source unknown
echo > /etc/systemd/logind.conf.d/power.conf << EOF
[Login]
HandlePowerKey=ignore
HandleSuspendKey=ignore
HandleHibernateKey=ignore
HandleRebootKey=ignore
EOF

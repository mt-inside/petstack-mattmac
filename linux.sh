echo '//sun/shared	/mnt/sun	cifs	user,ro,username=guest,password= 0 0' >> /etc/fstab

# TODO configure GTK & Qt themes (githome commit 28f2c27, plus the lightdm greeter)

# TODO lightdm & greeter config

go get github.com/erning/gorun
cp ./files/go-script.service /etc/systemd/system
systemctl enable go-script.service

# PDF printing
lpadmin -p PDF -E -v "cups-pdf:/" -P /usr/share/cups/model/CUPS-PDF_opt.ppd
# TODO: edit /etc/cups/cups-pdf.conf to change target dir

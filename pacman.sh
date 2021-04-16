pacman -S \
    base-devel \
    linux-headers \
    bluez bluez-utils bluez-tools \
    time \
    cups \
    cups-pdf \
    i3-gaps \
    i3status \
    i3lock \
    picom \
    redshift \
    feh \
    dunst \
    hsetroot \
    xorg-xwininfo \
    xorg-xev \
    xclip \
    xsel \
    libva-utils \
    vdpauinfo \
    nvidia-utils \
    mpv \
    breeze-gtk \
    rofi \
    i2c-tools \
    d-feet \
    scrot \
    kitty \
    ttf-jetbrains-mono \
    ttf-font-awesome \
    i3status-rust \
    conky \
    polybar \
    ttf-material-design-icons-webfont \
    vim \
    font-manager \
    udiks2 \
    udiskie \
    bazel \
    pwgen \
    strace \
    gdb \
    python2 \
    ethtool \
    iw \
    httpie \
    transmission-qt \
    exa \
    ripgrep \
    fd \
    bat \
    procs \
    sd \
    tokei \
    hyperfine \
    bandwhich \
    go \
    delve \
    make \
    hugo \
    terraform \
    cmake \
    ninja \
    python-virtualenv \
    rustup \
    vmtouch \
    mdcat \
    tmux \
    reptyr \
    gcc \
    dnsutils \
    clang \
    qemu \
    qemu-arch-extra \
    libvirt \
    fio \
    kubectl \
    kubectx \
    eksctl \
    minikube \
    docker \
    gitprompt-rs \
    docker-compose \
    kustomize \
    helm \
    jq \
    yq \
    k9s \
    mtr \
    whois \
    nmap \
    nodejs \
    deno \
    yarn \
    wireguard-tools \
    prettyping \
    packer \
    screenfetch \
    skaffold \
    socat \
    gnu-netcat \
    speedtest-cli \
    wireshark \
    obs \
    v4l2loopback-dkms \
    fuse2 \
    gimp \
    inkscape \
    youtube-dl \
    vault \
    yubikey-manager-qt \
    yubioath-desktop

go get cli53 # FIXME refactor all these files omg


# TODO AUR (make bash func)
spotfiy
dropbox
tusk (evernote)
google-cloud-sdk
aws-cli-v2 # broken Jan '21, did AWS manual install from zip
aws-session-manager-plugin
awless
azure-cli
bazelisk
linkerd
direnv
qt5-styleplugins
nerd-fonts-complete
pulumi
stern-bin
geekbench
usbtop
v4l2ucp
openrgb
cfssl
font-symbola
espanso
modulo
step-cli
appimage-git
dust
ytop
grex
zoxide

# Debugging
systemctl enable sshd.service
systemctl start sshd.service

systemctl enable docker.service
systemctl start docker.service

systemctl enable systemd-timesyncd.service
systemctl start systemd-timesyncd.service

systemctl enable cups.socket

systemctl --user enable dropbox.service
systemctl --user start dropbox.service

systemctl --user enable espanso.service
systemctl --user start espanso.service

function aur () {
    for i in aurs
    do
        git clone $i
        pushd
        makepkg -si
        popd
    done
}

systemds=pcscd

function enable_systemd_services () {
}

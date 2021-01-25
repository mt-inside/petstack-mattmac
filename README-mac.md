# TODO
* just stick with shell for now, it's so easy
  * all the package management stuff is idempotent
  * look at something for config file frobbing (even if it's just having the files in here, detecting OS, and copying/symlinking them in)
* consolidate the brew/arch/etc - some basharray / json of "base" packages, then each os can add,remove,rename.
* fix this provider to use brew  https://github.com/voxpupuli/puppet-nodejs

# Prereqs
* Copy over ssh priv key only; mode 0400
* Clone githome
  * Follow instructions
* Install homebrew
* Make sure a recent (4.0+) version of bash is installed and is actually selected as your shell
```bash
sudo vim /etc/shells
chsh -s /usr/local/bin/bash
echo $BASH_VERSION`
```
* Change hostname
* Install browser
  * Log in
* Install Kitty terminal
* Install tiling WM
* Install yubico manager, PAM-login tool
  * configure yubikey: https://support.yubico.com/support/solutions/articles/15000015045-macos-logon-tool-configuration-guide

# Setup
Run bash

# Packages
Run bash

# Downloads
XCode (App Store app)
* `xcode-select --install`

VS Code
Evernote
Spotify
VLC
Adobe
iStat menus
Docker edge
Dropbox
ArtRage
Transmission
Wireshark
Yubico athenticator

# VS Code
(language support as and when it comes up)
docker
vim
livecode sharing extension thing

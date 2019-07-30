class { 'homebrew':
  user      => 'matt',
  group     => 'admin',
  multiuser => false,
}

$pkgs = [
  'bash',
  'bash-completion',
  'curl-openssl',
  'exa',
  'get_iplayer',
  'git',
  'golang',
  'gpg',
  'htop',
  'hugo',
  'hyperkit', # docker-for-mac provides an ancient version of this, and puts it in /usr/local/bin too. We install this over the top, which doesnt seem to break docker-for-mac
  'imagemagick',
  'istioctl',
  'jq',
  'kubernetes-cli',
  'kubernetes-helm',
  'mdcat',
  'mtr',
  'node',
  'openvpn',
  'packer',
  'prettyping',
  'pwgen',
  'qemu',
  'rustup-init',
  'socat',
  'terraform',
  'tmux',
  'vim',
  'watch',
  'wget',
  'youtube-dl',
  'yq',
]

$casks = [
  'vagrant',
  'google-cloud-sdk',
]

/* Taps
* linuxkit/linuxkit --HEAD
*/

package { $pkgs:
  ensure   => present,
  provider => brew,
}

package { $casks:
  ensure   => present,
  provider => brewcask,
}

Package <| provider == tap |> -> Package <| provider == brew |>
Package <| provider == tap |> -> Package <| provider == brewcask |>

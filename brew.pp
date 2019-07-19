class { 'homebrew':
  user      => 'matt',
  group     => 'admin',
  multiuser => false,
}

$pkgs = [
  'tmux',
  'bash',
  'bash-completion',
  'git',
  'vim',
  'terraform',
  'rustup-init',
  'exa',
  'golang',
  'gpg',
  'hugo',
  'node',
  'htop',
  'imagemagick',
  'istioctl',
  'kubernetes-cli',
  'kubernetes-helm',
  'jq',
  'qemu',
  'mdcat',
  'mtr',
  'openvpn',
  'packer',
  'prettyping',
  'pwgen',
  'socat',
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

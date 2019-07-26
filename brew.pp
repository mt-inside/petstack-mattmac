class { 'homebrew':
  user      => 'matt',
  group     => 'admin',
  multiuser => false,
}

$pkgs = [
  'bash',
  'bash-completion',
  'exa',
  'get_iplayer',
  'git',
  'golang',
  'gpg',
  'htop',
  'hugo',
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

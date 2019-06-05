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
  'golang',
  'hugo',
  'node',
  'htop',
  'kubernetes-cli',
  'kubernetes-helm',
  'jq',
  'qemu',
  'mdcat',
  'socat',
  'wget',
  'youtube-dl',
]

$casks = [
  'vagrant',
  'google-cloud-sdk',
]

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

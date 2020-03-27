class { 'homebrew':
  user      => 'matt',
  group     => 'admin',
  multiuser => false,
}

$pkgs = [
  'asciinema',
  'awscli',
  'bash',
  'bash-completion',
  'broot',
  'buildifier', # formatting for bazel files
  'curl-openssl',
  'direnv',
  'etcd',
  'exa',
  'figlet',
  'get_iplayer',
  'git',
  'golang',
  'graphviz',
  'grpcurl',
  'gpg',
  'htop',
  'hub',
  'hugo',
  'hyperkit', # docker-for-mac provides an ancient version of this, and puts it in /usr/local/bin too. We install this over the top, which doesnt seem to break docker-for-mac
  'imagemagick',
  'iproute2mac',
  'istioctl',
  'jq',
  'jsonnet',
  'kubebuilder',
  'kubectx',
  'kustomize', # needed by kube-builder
  'kubernetes-cli',
  'kubernetes-helm',
  'lolcat',
  'mdcat',
  'mtr',
  'nmap',
  'node',
  'openvpn',
  'packer',
  'prettyping',
  'pwgen',
  'qemu',
  'rustup-init',
  'skaffold',
  'socat',
  'stern',
  'terraform',
  'tmux',
  'tflint',
  'vault',
  'vim',
  'wash',
  'watch',
  'wget',
  'youtube-dl',
  'yq',
]

$casks = [
  'vagrant',
  'google-cloud-sdk',
  'font-fira-code', # brew tap homebrew/cask-fonts
  'osxfuse',
]

/* Taps
* linuxkit/linuxkit --HEAD
* instrumenta/instrumenta => kubeval, conftest
* brew install golangci/tap/golangci-lint
* brew tap weaveworks/tap; brew install weaveworks/tap/eksctl
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

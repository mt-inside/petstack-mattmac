class { 'nodejs': }

$pkgs = [
  'gatsby-cli',
  'grpcc',
  'grunt-cli',
  'npm-check-updates',
  '@vue/cli',
  '@vue/cli-service-global',
]

nodejs::npm { $pkgs:
  ensure => present,
  target => "/Users/matt",
}

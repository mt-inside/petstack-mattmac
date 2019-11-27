class { 'nodejs': }

$pkgs = [
  'gatsby-cli',
  'grpcc',
  'grunt-cli',
  'npm-check-updates'
]

nodejs::npm { $pkgs:
  ensure => present,
  target => "/Users/matt",
}

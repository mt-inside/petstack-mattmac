class { 'nodejs': }

$pkgs = [
  'gatsby-cli',
  'grpcc',
]

nodejs::npm { $pkgs:
  ensure => present,
  target => "/Users/matt",
}

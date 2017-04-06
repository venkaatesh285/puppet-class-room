
class apache :: uninstall{ 


$package_name = $facts['os']['family'] ? {
    'redhat'=>'httpd',
    'debian'=>'apache2',
}

package { $package_name:
    ensure => absent,

 }
}
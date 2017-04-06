class apache::install {

$package_name = $facts['os']['family'] ? {
    'redhat'=>'httpd',
    'debian'=>'apache2',
}

package { $package_name:
    ensure => installed,

}

service { $package_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    pattern    => $package_name,
 }
}
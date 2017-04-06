
class apache::service { 

$package_name = $facts['os']['family'] ? {
    'redhat'=>'httpd',
    'debian'=>'apache2',
}

service { $package_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    pattern    => $package_name,
 }
}
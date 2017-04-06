
class apache :: params {


$package_name = $facts['os']['family'] ? {

    'Redhat' = 'httpd'
    'Debian' = 'apache2'
}

}
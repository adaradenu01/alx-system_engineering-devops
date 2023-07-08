# Installs a Nginx server with custome HTTP header

exec {'update':
  provider => shell,
  command  => 'apt-get -y update',
  before   => Exec['install Nginx'],
}

exec {'install Nginx':
  provider => shell,
  command  => 'apt-get -y install nginx',
  before   => Exec['add_header'],
}

exec { 'add_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
  provider => shell,
  command  => 'service nginx restart',
}

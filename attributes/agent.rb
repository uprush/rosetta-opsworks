## agent ##
default['rosetta']['agent']['include_loggen'] = false
default['rosetta']['agent']['loggen_bin'] = '/home/vagrant/.rbenv/shims/apache-loggen'
default['rosetta']['agent']['loggen_options'] = '--rate 2 --rotate 86400'
default['rosetta']['agent']['apache_access_dir'] = '/var/log/apache2'
default['rosetta']['agent']['apache_access_file'] = 'access.log'

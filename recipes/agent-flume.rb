include_recipe "rosetta::default"

# install apache log generator
if node['rosetta']['agent']['include_loggen']
  package "ruby-dev" # install mkmf, which is required by apache-loggen
  gem_package "apache-loggen"

  # create log dir
  directory node['rosetta']['agent']['apache_access_dir'] do
    owner "root"
    group "root"
    action :create
  end

  # create apache-loggen init script
  template "/etc/init.d/apache-loggen" do
    source "apache-loggen/init.erb"
    mode 0755
    action :create
  end

  service "apache-loggen"
end

# install flume-ng
# configure flume-ng
# start the service
# tail apache access log

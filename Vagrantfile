# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.username = 'root'
  config.ssh.password = 'vagrant'
  config.ssh.insert_key = true
  config.vm.box = "bento/centos-6.7"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.3.3"


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "3000"
    vb.cpus = 2
  end

  # NOTE: Only use once on initial setup
  # config.vm.provision "shell", inline: <<-SHELL
  #   yum install -y curl-devel redis memcached ImageMagick pcre-devel git nano
  #   command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  #   \curl -sSL https://get.rvm.io | bash -s stable
  #   source /etc/profile.d/rvm.sh
  #   rvm install 2.3.1
  #   yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm
  #   yum install -y Percona-Server-server-57 Percona-Server-devel-57.x86_64
  #   wget https://bitbucket.org/wkhtmltopdf/wkhtmltopdf/downloads/wkhtmltox-0.13.0-alpha-7b36694_linux-centos6-amd64.rpm
  #   yum install -y wkhtmltox-0.13.0-alpha-7b36694_linux-centos6-amd64.rpm
  #   yum install epel-release geoip -y
  # SHELL
end

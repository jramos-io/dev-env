require 'etc'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 8
  end

  config.vm.box = "debian/jessie64"
  config.vm.hostname = [Etc.getlogin, "-dev"].join

  config.vm.provision "shell", path: "provision.sh"
end
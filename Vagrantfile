# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = "vagrant"
  config.vm.box = "deshene/precise64-2.0.0-11.10.4"

  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.environments_path = "environments"
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.encrypted_data_bag_secret_key_path = "."
    chef.environment = "vagrant"
    chef.add_role "database"
    chef.add_recipe "mysql::server"
  end

end

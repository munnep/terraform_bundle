# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"
    config.vm.hostname = "terraform-bundle"

    # config.vm.provision "shell", path: "vagrant_scripts/install_go.sh"
  
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024*2
      v.cpus = 2
    end
  
  end
  
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine310"   # roboxes/alpine310
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provision :shell, :path => "setup.sh"
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file = "default.pp"
  end

  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/trusty32"
    master.vm.hostname = "master.bc.com"
    master.vm.network "private_network", ip: "192.168.33.10"
    master.vm.provision "shell", path: "master/install.sh"
    master.vm.provision "file", source: "master/files", destination: "~/files"
  end

  config.vm.define "agent" do |agent|
    agent.vm.box = "ubuntu/trusty32"
    agent.vm.hostname = "agent01.bc.com"
    agent.vm.network "private_network", ip: "192.168.33.11"
    agent.vm.provision "shell", path: "agent/install.sh"
    agent.vm.provision "file", source: "agent/files", destination: "~/files"
    agent.vm.provision "shell", path: "agent/post_install.sh"
  end


  #config.vm.define "centos_agent" do |centos_agent|
    #centos_agent.vm.box = "
  #end

end

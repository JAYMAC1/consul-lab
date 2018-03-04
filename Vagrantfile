Vagrant.configure("2") do |config|
  config.vm.box = "ftec/centos7-docker"
  config.vm.provision "shell", path: "provision_scripts/initialConfig.sh", privileged: false

  config.vm.define "consul-svr" do |csvr|
    csvr.vm.hostname = "consul-svr"
    csvr.vm.network "private_network", ip: "10.10.10.11"
  end

  config.vm.define "lb" do |lb|
    lb.vm.hostname = "lb"
    lb.vm.network "private_network", ip: "10.10.10.20"
  end

  (1..3).each do |i|
    config.vm.define "web#{i}" do |web|
      web.vm.hostname = "web#{i}"
      web.vm.network "private_network", ip: "10.10.10.2#{i}"
    end
  end


end

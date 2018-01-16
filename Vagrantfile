Vagrant.configure("2") do |config|
  config.vm.box = "williamyeh/centos7-docker"
  config.vm.provision "shell", path: "provision_scripts/initialConfig.sh", privileged: false

  config.vm.define "consul-svr" do |csvr|
    csvr.vm.hostname = "consul-svr"
    csvr.vm.network "private_network", ip: "10.10.10.11"
  end
end

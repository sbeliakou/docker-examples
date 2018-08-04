Vagrant.configure("2") do |config|
  config.vm.box = "sbeliakou/centos"
  config.vm.box_version = "7.5"
  config.vm.network :private_network, ip: "192.168.56.15"

  config.ssh.insert_key = false
  config.vm.hostname = "docker-host"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "20"]
    vb.memory = "512"
  end

  config.vm.provision "shell", inline: <<-SHELL
    /bin/sh Installation/Bash/centos.sh
    usermod -aG docker vagrant
  SHELL
end
Vagrant.configure(2) do |config|	  
  config.vm.box = "bento/ubuntu-19.10"  
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "/home/moe/IdeaProjects", "/home/vagrant/IdeaProjects"
	
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = "dev-os-vm"
    vb.memory = "5024"
    vb.cpus = 2
  end

  config.vm.provision "docker" do |d|    
     #   d.post_install_provision "shell", inline:"echo export http_proxy='http://127.0.0.1:3128/' >> /etc/default/docker"

	d.run "mongo" , args: "-d -p 27017-27019:27017-27019 --name mongodb"
  end


  config.vm.provision "shell" do |sh| 
	
	sh.path = "bootstrap.sh"
  end
end

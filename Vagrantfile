Vagrant.configure(2) do |config|	  
  config.vm.box = "bento/ubuntu-20.04"  
  config.vm.network "private_network", ip: "192.50.50.50"
  config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.synced_folder "/home/moe/IdeaProjects", "/home/vagrant/IdeaProjects"
 
 


	
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = "dev-os-vm"
    vb.memory = "6024"
    vb.cpus = 3
    # Enable host desktop integration
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
  end
  
  

#  config.vm.provision "docker" do |d|    
       # d.post_install_provision "shell", inline:"echo export http_proxy='http://127.0.0.1:3128/' >> /etc/default/docker"

#	d.run "mongo" , 
#	cmd: "bash -l",
#	args: "-d -p 27017-27019:27017-27019 --name mongodb"
	
	# d.run "mongo-express" , args: "-it --rm -p 8081:8081 --link mongodb"
#  end

#	config.vm.provision "shell",
#	inline: "/bin/sh /vagrant/scripts/install.sh"

#	end

# Run Ansible from the Vagrant VM
  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'provisioning/playbook.yml'
    ansible.galaxy_role_file = 'provisioning/requirements.yml'
  end

end

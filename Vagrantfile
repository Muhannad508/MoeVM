Vagrant.configure(2) do |config|	  
  config.vm.box = "ubuntu/bionic64"  	
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = "dev-os-vm"
    vb.memory = "5024"
    vb.cpus = 2
  end

  config.vm.provision "docker" do |d|    
	d.run "tomcat" , args: "-it -p 8888:8080"
	d.run "mongo"

  end


  config.vm.provision "shell" do |sh| 
	
	sh.path = "bootstrap.sh"
  end
end

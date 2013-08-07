Vagrant.configure("2") do |config|

  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = false

  config.ssh.forward_agent = true

  config.vbguest.auto_update = false

  config.vm.box = "rbenv-ruby1.9.3"
  config.vm.synced_folder ".", "/vagrant", :nfs => true
  config.vm.box_url = "http://codepen-dropbox.s3.amazonaws.com/rbenv-ruby1.9.3.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_role "production"
    #chef.add_recipe "hello_service"
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end

end

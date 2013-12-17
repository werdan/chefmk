Vagrant.configure("2") do |config|
  config.vm.hostname = "webserver"
  config.vm.box = "webserver"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"
  config.vm.network :public_network

  config.berkshelf.berksfile_path = "Berksfile"
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
    ]
    chef.data_bags_path = "data_bags"
    chef.roles_path = "roles"
    chef.add_role("node")
    chef.environments_path = "environments"
    chef.environment = 'development'
  end
end

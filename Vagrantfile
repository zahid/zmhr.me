name = 'zmhr.me'
ip = '192.168.123.124'
box = 'trusty64'
box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
hostname = "local.#{name}"

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = box
    config.vm.box_url = box_url

    config.vm.provider :virtualbox do |vb|
        vb.name = name
    end

    config.vm.network :private_network, ip: ip

    config.vm.hostname = hostname

    config.vm.synced_folder(
        '.',
        "/home/vagrant/workspace/#{name}",
        :owner => 'vagrant',
        :mount_options => ['dmode=775']
    )

    config.vm.provision :chef_solo do |chef|
        chef.custom_config_path = "ssl_fix.chef"
        chef.cookbooks_path = 'cookbooks'

        chef.json = {
            :project => {
                :name => name
            },
            :run_list => %w{
                nodejs
                mongodb
                angry-hobo::npm_installation
            },
            :nodejs => {
                :install_method => 'package',
                :version => '0.10.28',
                :npm => '1.4.13'
            }
        }
    end
end

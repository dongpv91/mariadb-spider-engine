Vagrant.configure("2") do |config|

    config.vm.define "spider_node" do |spider_node|
        spider_node.vm.box = "centos/7"
        spider_node.vm.hostname = "spider-node"
        spider_node.vm.network "private_network", ip: "192.168.66.10", auto_correct: true
        spider_node.vm.synced_folder ".", "/opt/infra", owner: "vagrant", group: "vagrant", mount_options: ["dmode=777", "fmode=777"]
        spider_node.vm.provision "shell", inline: <<-SHELL
            sudo yum -y install epel-release
            sudo yum -y install ansible
        SHELL
    end

    config.vm.define "data_node1" do |data_node1|
        data_node1.vm.box = "centos/7"
        data_node1.vm.hostname = "data-node1"
        data_node1.vm.network "private_network", ip: "192.168.66.11", auto_correct: true
    end
    config.vm.define "data_node2" do |data_node2|
        data_node2.vm.box = "centos/7"
        data_node2.vm.hostname = "data-node2"
        data_node2.vm.network "private_network", ip: "192.168.66.12", auto_correct: true
    end
    config.vm.define "data_node3" do |data_node3|
        data_node3.vm.box = "centos/7"
        data_node3.vm.hostname = "data-node3"
        data_node3.vm.network "private_network", ip: "192.168.66.13", auto_correct: true
    end
end

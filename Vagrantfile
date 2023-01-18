IMAGE = "hashicorp/bionic64"
N = 2

Vagrant.configure("2") do |config|

  (1..N).each do |i|
    config.vm.define "k8s-node#{i}" do |nd|
      nd.vm.provider "virtualbox" do |vb|
        vb.name = "k8s-node#{i}"
        vb.cpus = 2
        vb.memory = 2048
      end
      nd.vm.box = IMAGE
      nd.vm.hostname = "k8s-node#{i}"
      nd.vm.network "private_network", ip: "10.50.100.10#{i}"
    end
  end

  config.vm.define "k8s-cp" do |cp|
    cp.vm.provider "virtualbox" do |vb|
      vb.name = "k8s-cp"
      vb.cpus = 2
      vb.memory = 2048
    end
    cp.vm.box = IMAGE
    cp.vm.hostname = "k8s-cp"
    cp.vm.network "private_network", ip: "10.50.100.100"
    cp.vm.provision "shell", path: "ansible.sh", privileged: false
  end

end

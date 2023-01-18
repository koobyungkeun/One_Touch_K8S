#!/usr/bin/env bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

ansible-playbook /vagrant/ssh.yml -i /vagrant/inventory.txt
ansible-playbook /vagrant/k8s_cp.yml -i /vagrant/inventory.txt
ansible-playbook /vagrant/k8s_node.yml -i /vagrant/inventory.txt

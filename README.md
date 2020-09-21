vagrant up

vagrant ssh spider_node

cd /opt/infra/ansible

ansible-playbook -i hosts setup.yml
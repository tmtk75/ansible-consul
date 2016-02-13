ping: ssh-config
	ansible -i hosts.ini -m ping all

playbook: ssh-config
	ansible-playbook -i hosts.ini playbook.yml
	#ansible-playbook -i hosts.ini playbook.yml --start-at-task="config file"

./roles/consul: roles
	ln -s `pwd` roles/consul

roles:
	mkdir -p roles

ssh-config:
	vagrant ssh-config > ssh-config

.e/bin/ansible: .e/bin/pip
	.e/bin/pip install ansible

.e/bin/pip:
	virtualenv .e


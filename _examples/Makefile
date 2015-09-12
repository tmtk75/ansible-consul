playbook: .e/bin/ansible ssh-config tmtk75.consul
	.e/bin/ansible-playbook -i "default," playbook.yml

ping: ansible
	.e/bin/ansible -m ping -i "default," all

tmtk75.consul:
	ln -s .. tmtk75.consul

ssh-config:
	vagrant ssh-config `vagrant status | sed -r '/running/!d;s/ .*$$//'` \
	| sed -r 's/Host .*/Host default/' | tee ssh-config

clean:
	rm -f tmtk75.consul ssh-config

distclean:
	rm -rf .e

##
##
##
ansible: .e/bin/ansible
.e/bin/ansible: .e/bin/pip
	.e/bin/pip install ansible
.e/bin/pip:
	virtualenv .e

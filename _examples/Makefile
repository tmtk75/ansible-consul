playbook: .e/bin/ansible ssh-config hosts tmtk75.consul
	.e/bin/ansible-playbook -i hosts playbook.yaml

ping: .e/bin/ansible ssh-config
	.e/bin/ansible -m ping -i hosts all

tmtk75.consul:
	ln -s .. tmtk75.consul

ssh-config:
	vagrant ssh-config | tee ssh-config

.e/bin/ansible: .e/bin/pip
	.e/bin/pip install ansible

.e/bin/pip:
	virtualenv .e

clean:
	rm -f tmtk75.consul ssh-config

distclean:
	rm -rf .e

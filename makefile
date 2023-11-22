check-webservers:
	ansible all -m ping -i ./inventory.yml --extra-vars "@group_vars/hosts.yml"

install-requirements:
	ansible-galaxy install -r requirements.yml

prepare-webservers:
	ansible-playbook playbook.yml -i inventory.yml
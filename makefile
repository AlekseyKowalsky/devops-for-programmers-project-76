check-webservers:
	ansible all -m ping -i ./inventory.yml --extra-vars "@group_vars/hosts.yml"

install-requirements:
	ansible-galaxy install -r requirements.yml

setup-webservers:
	ansible-playbook setup.yml -i inventory.yml

deploy-webservers:
	ansible-playbook deploy.yml -i inventory.yml
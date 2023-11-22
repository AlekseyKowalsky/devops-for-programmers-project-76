check-all-machines:
	ansible all -m ping -i ./inventory.yml

install-ansible-requirements:
	ansible-galaxy install -r requirements.yml

prepare-all-machines:
	$(MAKE) install-ansible-requirements
	ansible-playbook playbook.yml -i inventory.yml
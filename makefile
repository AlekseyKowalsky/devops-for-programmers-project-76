VAULT_PASSWORD_FILE := group_vars/webservers/.vault_pass

check-webservers:
	ansible all -m ping -i ./inventory.yml --vault-password-file $(VAULT_PASSWORD_FILE)

install-requirements:
	ansible-galaxy install -r requirements.yml

setup-webservers:
	ansible-playbook setup.yml -i inventory.yml --vault-password-file $(VAULT_PASSWORD_FILE)

deploy-webservers:
	ansible-playbook playbook.yml -i inventory.yml --vault-password-file $(VAULT_PASSWORD_FILE)

decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml --output=group_vars/webservers/vault.decrypted.yml --vault-password-file $(VAULT_PASSWORD_FILE)

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.decrypted.yml --output=group_vars/webservers/vault.yml --vault-password-file $(VAULT_PASSWORD_FILE)
### Hexlet tests and linter status:
[![Actions Status](https://github.com/AlekseyKowalsky/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/AlekseyKowalsky/devops-for-programmers-project-76/actions)

### The application web address:
https://alekspaces.com
## Getting start
### Requirements:
- OS: Linux
- Installed tools: Make, Ansible
### Preparing web servers:
1. Actualize secrets in the [group_vars/webservers directory](group_vars%2Fwebservers):
- place there `.vault_pass` text file with the vault password inside
- use make commands to encrypt/decrypt vault secrets in order to change them:
```bash
 make encrypt-vault
```
```bash
 make decrypt-vault
```

2. Check availability of machines:
```bash
make check-webservers
```
3. Install needed requirement:
```bash
make install-requirements
```
4. Prepare webservers before running the app:
```bash
setup-webservers
```
5. Deploy and run the application on webservers :
```bash
deploy-webservers
```
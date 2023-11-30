### Hexlet tests and linter status:
[![Actions Status](https://github.com/AlekseyKowalsky/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/AlekseyKowalsky/devops-for-programmers-project-76/actions)

### The application web address:
https://alekspaces.com
## Getting start
### Preparing web servers:
1. Add variables into group_vars directory in accordance with example files.        

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
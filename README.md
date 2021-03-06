# ansible-maas

An Ansible Dynamic Inventory Script for the Ubuntu MAAS 2.0 API.

Primarily it will be called by Ansible itself with the `--list` or `--host`
arguments, but additional arguments were implemented for administrators to take
advantage of if desired.

Note: this script will only return machines that are in "Deployed" status.

## Requirement
- Install python-pip: `apt-get update; apt-get install -y python-pip; pip install --upgrade pip`
- Install essential pip packages: `pip install requests oauth`

## Usage
- Get MAAS_API_URL: `./maas-login.sh`
- Get MAAS_API_KEY: `cat /tmp/api_key`
- Set `MAAS_API_URL` and `MAAS_API_KEY` in the environments file `maas-env` with the above values.
- Replace Ansible's hosts file in the correct directory, e.g. `/etc/ansible/hosts`
- Set environment variables `MAAS_API_URL` and `MAAS_API_KEY`: `source maas-env`
- Enjoy!

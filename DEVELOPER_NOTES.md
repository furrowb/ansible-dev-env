# Developer Notes

In order to test out the playbook, build the Docker images like so:

```shell
# To build Ubuntu/Debian
docker build . -f Dockerfile.ubuntu -t ubuntu_test:latest

# To build Arch
docker build . -f Dockerfile.arch -t arch_test:latest
```

Then you can run the containers with the following:

```shell
# To run Ubuntu
docker run --rm -it -v ${PWD}:/home/not_root/ansible ubuntu_test:latest /usr/bin/bash
# To run Arch
docker run --rm -it -v ${PWD}:/home/not_root/ansible arch_test:latest /usr/bin/bash
```

In the containers, you can go to the go to the `ansible` directory and run the playbook with this:

```shell
cd ansible
ansible-playbook --extra-vars "ansible_sudo_pass=password" -u not_root playbook.yml
```

## Debugging tools

### Find all Ansible system facts

```shell
ansible localhost -m ansible.builtin.setup
```

## Common Issues

### Ubuntu reports issue when attempting to update the cache

Ansible errors out with the following error:

```
Error ppa.launchpad.net/ansible/ansible/ubuntu groovy release does not have a release file when running apt update via ansible or without ansible.
```

It requires removing the ansible ppa with the following command: `sudo apt-add-repository --remove ppa:ansible/ansible`

### ZSH prompts "character not in range"

This appears to be an issue with the `locale` not being setup. Normally, you could use something like `localectl set-locale LANG=en_US.UTF-8` and correct it but this gives another error about how the system wasn't started with systemd.
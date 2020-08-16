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

# Environment Setup

This playbook is my way to setup my personal development environment. In order to get started, first install ansible

```shell
# Arch/Manjaro
sudo pacman -S ansible
# Debian/Ubuntu - Not applicable yet
sudo apt-get install ansible
```

Once Ansible is installed, just use the following:

```shell
ansible-playbook -K playbook.yml
```

This prompts you for the user's password which must have sudo access.

## Common issues

### Terminal has weird characters

In order for the ZSH theme to work appropriately, you must select a `Powerline` family font in your terminal of choice.

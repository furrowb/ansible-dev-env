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

## Tools

### ZSH

ZSH (z-shell) is a replacement shell for bash. It provides many quality of life improvements for developers and is a tool I recommend for any Unix developers

### Oh-My-ZSH

https://ohmyz.sh/

A complement to ZSH, provides additional functionality on top of ZSH. There are tons of plugins and themes to enhance ZSH. I use the `bullet-train` theme for my environment but `agnostic` is pretty close

### Powerline Fonts

In order to use the Oh-My-ZSH theme, it requires Powerline fonts to be installed.

### Fzf

https://github.com/junegunn/fzf

Fzf (fuzzy find) is a general purpose command-line fuzzy finder. Particularly, I use it for the terminal's/ZSH's Ctrl-R, which allows you to search your command history. It provides an impressive visual display instead of having to hunt down a particular command.

### Vim

If there are simple file changes required, Vim is my go-to tool for editing. Once you get the hang of the key bindings, it becomes easy to be edit files quickly without ever leaving your keyboard.


### Visual Studio Code

https://code.visualstudio.com/

Another editor but more powerful than Vim. Provides a more pleasing editing experience when needing to edit multiple files. Also has a Vim plugin so I can still use Vim key bindings with it.

### Git

While likely installed on most Unix machines already, Git is the most popular source control tool out today. Chances are if you're reading this, you probably are at least somewhat familiar with it.

## Common issues

### Terminal has weird characters

In order for the ZSH theme to work appropriately, you must select a `Powerline` family font in your terminal of choice.

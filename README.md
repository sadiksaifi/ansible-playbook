# Ansible Playbook for setting up My Arch Linux env.

This repository contains an Ansible playbook to automate the setup of an Arch Linux system for a specific workflow. The playbook installs necessary software packages and performs system configurations.

## Desktop Setup
![Hyprland Setup](https://data.sadiksaifi.dev/Screenshots/desktop.png)

## Prerequisites
- Arch Linux: Ensure the system has a fresh Arch Linux installation.
- Ansible: Install Ansible on your control machine using `sudo pacman -S ansible`.

## Usage
1. Clone the repository: Run 
```sh
ansible-pull -U https://github.com/sadikeey/ansible-playbook.git
```

2. Run the Playbook: Execute
```sh
ansible-playbook --ask-become-pass --ask-vault-password main.yaml
```

3. Verification: Check that the Arch Linux system is set up according to your workflow requirements.

## Components Installed
The playbook sets up the following components for my workflow:
- Hyprland (Wayland Compositor)
- Waybar
- [Neovim](https://github.com/sadikeey/nvim.git)
- Zsh
- SSH Keys
- [Dotfiles](https://github.com/sadikeey/dotfiles.git) and etc.

## Contributions
Contributions to this Ansible playbook are welcome! If you encounter issues, have suggestions, or want to add new features, submit a pull request. Contributions will be reviewed and merged if they align with the project's goals.

**Note: This script is suited for my workflow, and it requires ansible-playbook --ask-vault-pass. Take inspiration from this playbook but customize it to fit your needs.**

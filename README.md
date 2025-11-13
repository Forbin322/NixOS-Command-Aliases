# NixOS-Command-Aliases
Command Aliases (shortcuts!) to put in your config file for quicker execution

This repo contains 5 code snippets you can include in your NixOS config file which aim to make everyday management tasks easier and quicker.

**edit**
This will execute `sudo nixos-rebuild edit;` a quick way to edit your config file.

**switch**
This will execute `sudo nixos-rebuild switch`; a quick way to build and switch into your latest config file.

**cleanup**
This will execute both `sudo nix-collect-garbage` and `sudo nix-store --optimise` - a quick way to clean up after making changes.

**gen-list**
This will execute `sudo nix-env --list-generations --profile /nix/var/nix/profiles/system`; a quick way to list your current generations.

**gen-del**
This expects a parameter of a generation number, and will execute `sudo nix-env --delete-generations "$@" --profile /nix/var/nix/profiles/system`; a quick way to delete specific generations. There is a check in the code to ensure that if NO parameter is given, it will NOT delete all generations (without which, it would delete all except the current generation).
So this is run as `gen-del 20 21 22` (for example)

Feel free to use, extend, amend, share, etc...

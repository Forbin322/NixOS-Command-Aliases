#Command Aliases (Shortcuts!)
  programs.bash.shellAliases = {
    edit = ''sudo nixos-rebuild edit'';
    switch = ''sudo nixos-rebuild switch'';
    gen-list = ''sudo nix-env --list-generations --profile /nix/var/nix/profiles/system'';
    cleanup = '' sudo nix-collect-garbage; sudo nix-store --optimise '';
  };
  programs.bash.interactiveShellInit = ''
    gen-del() {
      if [ $# -eq 0 ]; then
        echo "Error: No generation numbers specified!"
        echo "Usage: gen-del <generation-numbers>"
        echo "Example: gen-del 55 56 57"
        return 1
      fi
      sudo nix-env --delete-generations "$@" --profile /nix/var/nix/profiles/system
    }
  '';

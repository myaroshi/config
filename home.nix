{ config, pkgs, ... }:

{
  home.username = "lynn";
  home.homeDirectory = "/home/lynn";

  home.stateVersion = "26.05";

  imports = [
    ./alacritty.nix
  ];

  # User packages
  home.packages = with pkgs; [
    ripgrep
    fd
    eza
    bat
  ];

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "eza -lah";
      cat = "bat";
      ".." = "cd ..";
    };
  };

  # Let Home Manager manage itself
  programs.home-manager.enable = true;
}

{ config, pkgs, ... }:

{
  home.username = "yourusername";
  home.homeDirectory = "/home/yourusername";

  home.stateVersion = "25.11";

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

  # Git
  programs.git = {
    enable = true;

    userName = "Your Name";
    userEmail = "you@example.com";
  };

  # Zsh
  programs.zsh = {
    enable = true;

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

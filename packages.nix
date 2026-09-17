{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Terminal
    alacritty

    # Utilities
    git
    curl
    wget
    unzip
    zip

    # System tools
    htop
    btop
    fastfetch

    # File management
    ranger

    # Editors
    neovim

    # Wayland/X11 utilities
    picom
    xclip

    # Networking
    networkmanagerapplet
    # Browser
    firefox
  ];
}

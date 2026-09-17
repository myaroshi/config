{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Terminal
    alacritty

    # Utilities
    git
    dmenu

    # System tools
    btop
    fastfetch

    # File management
    pcmanfm

    # Editors
    vim

    # Wayland/X11 utilities
    picom
    xclip

    # Networking
    networkmanagerapplet
    # Browser
    firefox
  ];
}

{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./packages.nix
  ];

  # Bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos";

  # Networking
  networking.networkmanager.enable = true;
  networking.networkmanager.enable = true;
  console.keyMap = "br-abnt2";
  
  # Time zone
  time.timeZone = "America/Sao_Paulo";

  # Locale
  i18n.defaultLocale = "pt_BR.UTF-8";

  # X11
  services.xserver.enable = true;

  # Your user
  users.users.yourusername = {
    isNormalUser = true;
    description = "Your Name";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  # Allow sudo for wheel
  security.sudo.wheelNeedsPassword = true;

  # Nix settings
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

  system.stateVersion = "26.05";
}

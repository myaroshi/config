{ config, pkgs, ... }:

{
  # Window manager
  services.xserver.windowManager.oxwm.enable = true;

  # Display manager
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  # Shell
  programs.zsh = {
    enable = true;
  };

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-emoji
  ];

  # Enable basic desktop services
  services.dbus.enable = true;

  # Sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
}

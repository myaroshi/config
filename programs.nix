{ config, pkgs, ... }:

{
  # Window manager
  services.xserver.windowManager.oxwm.enable = true;

  # Display manager
  services.xserver.displayManager.lightdm.enable = true;

  # Shell
  programs.zsh = {
    enable = true;
  };

  # Enable basic desktop services
  services.dbus.enable = true;

  # Sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
}

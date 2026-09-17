{ config, pkgs, ... }:

{
   services.xserver = {
   enable = true;
   windowManager.oxwm.enable = true;
  # displayManager.sessionCommands = ''
  #      xwallpaper --stretch ~/wallpapers/a.png
  # '';
  #};

  # Display manager
  services.xserver.displayManager.lightdm.enable = true;

  # Enable basic desktop services
  services.dbus.enable = true;

  # Sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
}

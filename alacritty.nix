{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;

    settings = {
      window = {
        opacity = 0.70;
        padding = {
          x = 10;
          y = 10;
        };
      };

      cursor = {
        style = "Block";
      };

      scrolling = {
        history = 10000;
      };

      colors = {
        primary = {
          background = "#1e1c31";
          foreground = "#cbe1e7";
        };

        cursor = {
          text = "#ff271d";
          cursor = "#fbfcfc";
        };
      };
    };
  };
}

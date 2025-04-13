{...}: {
  programs.hyprlock = {
    enable = true;
  };

  xdg.configFile = {
    "hypr/hyprlock.conf" = {
      source = ./hyprlock.conf;
    };
    "hypr/hyprlock.png" = {
      source = ./hyprlock.png;
    };
    "hypr/vivek.png" = {
      source = ./vivek.png;
    };
  };
}

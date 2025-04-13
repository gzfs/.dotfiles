{...}: {
  # Install and configure waybar via home-manager module
  programs.waybar = {
    enable = true;
  };

  xdg.configFile = {
    "waybar/config.jsonc" = {
      source = ./config.jsonc;
    };
    "waybar/style.css" = {
      source = ./style.css;
    };
    "waybar/theme.css" = {
      source = ./theme.css;
    };
    "waybar/themes" = {
      source = ./themes;
      recursive = true;
    };
    "waybar/scripts" = {
      source = ./scripts;
      recursive = true;
    };
    "waybar/modules" = {
      source = ./modules;
      recursive = true;
    };
  };
}

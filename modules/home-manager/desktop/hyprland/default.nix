{nhModules, ...}: {
  imports = [
    "${nhModules}/services/waybar"
  ];

  xdg.configFile = {
    "hypr/hyprland.conf" = {
      source = ./hyprland.conf;
    };
  };
}

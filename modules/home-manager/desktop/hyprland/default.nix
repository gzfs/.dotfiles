{nhModules, ...}: {
  imports = [
    "${nhModules}/services/waybar"
    "${nhModules}/services/hyprlock"
  ];

  xdg.configFile = {
    "hypr/hyprland.conf" = {
      source = ./hyprland.conf;
    };
  };
}

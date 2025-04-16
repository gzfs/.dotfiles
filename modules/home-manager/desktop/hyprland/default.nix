{nhModules, ...}: {
  imports = [
    "${nhModules}/services/waybar"
    "${nhModules}/services/hyprlock"
    "${nhModules}/services/swaync"
    "${nhModules}/services/hyprpaper"
  ];

  xdg.configFile = {
    "hypr/hyprland.conf" = {
      source = ./hyprland.conf;
    };
  };
}

{...}: {
  xdg.configFile = {
    "rofi/theme.rasi" = {
      source = ./theme.rasi;
    };
    "rofi/themes" = {
      source = ./themes;
      recursive = true;
    };
    "rofi/wifi-menu.rasi" = {
      source = ./wifi-menu.rasi;
    };
    "rofi/power-menu.rasi" = {
      source = ./power-menu.rasi;
    };
    "rofi/bluetooth-menu.rasi" = {
      source = ./bluetooth-menu.rasi;
    };
  };
}

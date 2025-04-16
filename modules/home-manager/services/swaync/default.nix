{...}: {
  services.swaync = {
    enable = true;
    settings = {
      "$schema" = "/etc/xdg/swaync/configSchema.json";
      positionX = "right";
      positionY = "top";
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-left = 10;
      notification-icon-size = 48;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      timeout = 5;
      timeout-low = 5;
      timeout-critical = 20;
      fit-to-screen = true;
      control-center-width = 350;
      notification-window-width = 350;
      keyboard-shortcuts = true;
      image-visibility = "when-available";
      transition-time = 200;
      hide-on-clear = false;
      hide-on-action = true;
      script-fail-notify = true;
      widgets = [
        "title"
        "dnd"
        "notifications"
        "mpris"
        "volume"
        "backlight"
        "buttons-grid"
      ];
      widget-config = {
        title = {
          text = "󰂚  :: Notifications";
          clear-all-button = true;
          button-text = "󰎟 ";
        };
        dnd = {
          text = "Do Not Disturb";
        };
        label = {
          max-lines = 1;
          text = "Notification Center";
        };
        mpris = {
          image-size = 96;
          image-radius = 10;
        };
        volume = {
          label = "󰕾 ";
        };
        backlight = {
          label = "󰃟 ";
          subsystem = "backlight";
        };
        buttons-grid = {
          actions = [
            {
              label = "󰔏";
              command = "hyprshade toggle redshift";
            }
            {
              label = "󰌵";
              command = "hyprshade toggle dim";
            }
            {
              label = "󰊠";
              command = "hyprshade toggle grayscale";
            }
            {
              label = "󰏘";
              command = "hyprshade toggle vibrance";
            }
            {
              label = "󰌁";
              command = "hyprshade toggle invert";
            }
          ];
        };
      };
    };
  };

  xdg.configFile = {
    "swaync/style.css" = {
      source = ./style.css;
    };
  };
}

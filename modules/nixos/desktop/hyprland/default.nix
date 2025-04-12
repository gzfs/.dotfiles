{pkgs, ...}: {
  services.xserver.updateDbusEnvironment = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  programs.hyprland = {
    enable = true;
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    XCURSOR_SIZE = "24";
  };

  environment.systemPackages = with pkgs; [
    grim
    slurp
    wofi
  ];
}

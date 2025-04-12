{
  config,
  pkgs,
  nhModules,
  ...
}: {
  imports = [
    "${nhModules}/common"
    "${nhModules}/desktop/hyprland"
  ];

  home.stateVersion = "24.11";

  home.packages = [
    pkgs.kitty
    (pkgs.nerdfonts.override {fonts = ["VictorMono" "JetBrainsMono"];})
  ];

  programs.home-manager.enable = true;
}

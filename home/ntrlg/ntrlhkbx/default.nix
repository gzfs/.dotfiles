{ config, pkgs, nhModules, ... }:

{
  
  imports = [
	"${nhModules}/common"
  ];

  home.stateVersion = "24.11"; 

  home.packages = [
    pkgs.kitty
    (pkgs.nerdfonts.override { fonts = [ "VictorMono" ]; })
  ];

  programs.home-manager.enable = true;
}

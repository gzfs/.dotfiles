{nixosModules, ...}: {
  imports = [
    ./hardware-configuration.nix
    "${nixosModules}/common"
  ];

  networking.hostName = "ntrlhkbx";

  system.stateVersion = "24.11";
}

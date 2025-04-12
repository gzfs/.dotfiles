{
  outputs,
  userConfig,
  pkgs,
  ...
}: {
  imports = [
    ../programs/neovim
    ../programs/brave
    ../programs/btop
    ../programs/git
    ../programs/bat
    ../programs/fish
    ../programs/starship
    ../programs/kitty
    ../services/ulauncher
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "${userConfig.name}";
    homeDirectory = "/home/${userConfig.name}";
  };

  home.packages = with pkgs; [
    telegram-desktop
    code-cursor
    fnm
    discord
    gh
    anki-bin
    awscli2
    dig
    du-dust
    eza
    fd
    jq
    kubectl
    lazydocker
    nh
    openconnect
    pipenv
    python3
    ripgrep
    terraform
  ];
}

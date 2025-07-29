{ config, pkgs, ... }:
{
  home-manager.users.${config.user}.home = {
    packages = with pkgs; [
      neovim
    ];

    file = {
      ".config/nvim".source = ../config/nvim;
    };

    sessionVariables = {
      EDITOR = "nvim";
    };
  };
}

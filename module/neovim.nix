{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      neovim
    ];

    home.file = {
      ".config/nvim".source = ../config/nvim;
    };
  };
}

{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      starship
    ];

    home.file = {
      ".config/starship.toml".source = ../config/starship/starship.toml;
    };
  };
}

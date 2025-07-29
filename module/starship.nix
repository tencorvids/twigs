{ config, pkgs, ... }:
{
  home-manager.users.${config.user}.home = {
    packages = with pkgs; [
      starship
    ];

    file = {
      ".config/starship.toml".source = ../config/starship/starship.toml;
    };
  };
}

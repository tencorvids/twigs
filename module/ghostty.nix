{ config, ... }:
{
  home-manager.users.${config.user}.home = {
    file = {
      ".config/ghostty".source = ../config/ghostty;
    };
  };
}

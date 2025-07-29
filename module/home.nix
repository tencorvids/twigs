{ config, ... }:
{
  config.home-manager.users.${config.user}.home = {
    stateVersion = "25.05";
    username = config.user;
    homeDirectory = "/Users/${config.user}";
  };
}

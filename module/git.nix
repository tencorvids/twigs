{ config, lib, pkgs, ... }:
{
  home-manager.users.${config.user.name} = {
    programs.git = {
      enable = true;
      userName = "rew";
      userEmail = "rew@tencorvids.com";
      extraConfig.init.defaultBranch = "main";
    };
  };
}

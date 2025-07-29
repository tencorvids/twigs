{ config, ... }:
{
  home-manager.users.${config.user} = {
    programs.git = {
      enable = true;
      userName = "rew";
      userEmail = "rew@tencorvids.com";
      extraConfig.init.defaultBranch = "main";
    };
  };
}

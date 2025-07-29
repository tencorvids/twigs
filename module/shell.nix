{ config, pkgs, ... }:
{
  environment.shells = [ pkgs.zsh ];

  users.users.${config.user} = {
    shell = pkgs.zsh;
  };

  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      starship
    ];

    home.file = {
      ".zshrc".source = ../config/zsh/.zshrc;
    };
  };
}

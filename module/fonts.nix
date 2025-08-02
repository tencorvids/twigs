{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      geist-font
      nerd-fonts.geist-mono
    ];
  };
}

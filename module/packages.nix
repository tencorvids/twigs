{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      bat
      fd
      fzf
      jq
      lazygit
      ripgrep
    ];
  };
}

{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      bat
      eza
      fd
      fzf
      jq
      lazydocker
      lazygit
      ripgrep
      opencode
    ];
  };
}

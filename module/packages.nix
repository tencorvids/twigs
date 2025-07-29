{ config, pkgs, ... }:
{
  home-manager.users.${config.user} = {
    home.packages = with pkgs; [
      lazygit
      ripgrep
      neovim
      tmux
    ];
  };
}

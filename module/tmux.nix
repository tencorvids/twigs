{ config, pkgs, ... }:
{
  home-manager.users.${config.user}.home = {
    packages = with pkgs; [
      tmux
    ];

    file = {
      ".tmux.conf".source = ../config/tmux/.tmux.conf;
    };
  };
}

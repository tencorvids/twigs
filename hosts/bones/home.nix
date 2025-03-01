{ pkgs, ... }:
{
  imports = [
    ../../module/git.nix
  ];

  home.username = "rew";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    aerospace
    alejandra
    bat
    btop
    fd
    fzf
    jq
    lazygit
    neovim
    ripgrep
    tmux
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.file = {
    ".config/ghostty/config".source = ../../config/ghostty/config;
    ".config/nvim".source = ../../config/nvim;
    ".tmux.conf".source = ../../config/tmux/.tmux.conf;
  };

  programs.zsh.enable = true;
  programs.home-manager.enable = true;
}

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
    starship
    tmux
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.file = {
    ".zshrc".source = ../../config/zsh/.zshrc;
    ".tmux.conf".source = ../../config/tmux/.tmux.conf;
    ".config/ghostty/config".source = ../../config/ghostty/config;
    ".config/ghostty/themes/yugen".source = ../../config/ghostty/themes/yugen;
    ".config/nvim".source = ../../config/nvim;
    ".config/starship.toml".source = ../../config/starship/starship.toml;
  };

  programs.zsh.enable = true;
  programs.bash.enable = false;
  programs.home-manager.enable = true;
}

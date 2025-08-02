{ inputs, globals, ... }:
inputs.nix-darwin.lib.darwinSystem {
  system = "aarch64-darwin";
  modules = [
    globals
    inputs.home-manager.darwinModules.home-manager

    # darwin modules
    ../../module/darwin/homebrew.nix
    ../../module/darwin/system.nix
    ../../module/darwin/touch.nix
    ../../module/darwin/user.nix

    # modules
    ../../module/fonts.nix
    ../../module/ghostty.nix
    ../../module/git.nix
    ../../module/home.nix
    ../../module/neovim.nix
    ../../module/nix.nix
    ../../module/packages.nix
    ../../module/shell.nix
    ../../module/starship.nix
    ../../module/tmux.nix
  ];
}

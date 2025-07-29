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
    ../../module/home.nix
    ../../module/nix.nix
    ../../module/packages.nix
    ../../module/git.nix
    ../../module/starship.nix
    ../../module/shell.nix
  ];
}

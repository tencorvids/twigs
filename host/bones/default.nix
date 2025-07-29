{ inputs, globals, ... }:
inputs.nix-darwin.lib.darwinSystem {
  system = "aarch64-darwin";
  modules = [
    globals
    inputs.home-manager.darwinModules.home-manager
    ../../module/darwin/user.nix
    {
      home-manager.users.${globals.user}.imports = [ ];
    }
  ];
}

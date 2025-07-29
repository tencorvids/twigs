{
  description = "rew's dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    let
      globals = {
        user = "rew";
      };
    in
    rec {
      darwinConfigurations = {
        bones = import ./host/bones { inherit inputs globals; };
      };

      homeConfigurations = {
        bones = darwinConfigurations.bones.config.home-manager.users.${globals.user}.home;
      };
    };
}

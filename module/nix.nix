{ ... }:
{
nix = {
    gc = {
      automatic = true;
      options = "--delete-older-than 30d";
    };
    optimise = {
      automatic = true;
    };
    settings = {
      warn-dirty = false;
    };
  };
}
{ config, lib, ... }:
{
  options = {
    user = lib.mkOption {
      type = lib.types.str;
      description = "Primary user of the system";
    };
  };

  config.home-manager = {
    backupFileExtension = "backup";
    useGlobalPkgs = true;
    useUserPackages = false;
  };

  config.home-manager.users.${config.user}.home = {
    stateVersion = "25.05";
    username = config.user;
    homeDirectory = "/Users/${config.user}";
  };
}

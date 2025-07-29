{ config, ... }:
{
  system = {
    stateVersion = 6;
    primaryUser = config.user;

    defaults = {
      dock = {
        autohide = true;
        orientation = "bottom";
        show-recents = false;
        minimize-to-application = true;
        magnification = true;
      };

      NSGlobalDomain = {
        AppleFontSmoothing = 0;
        AppleInterfaceStyle = "Dark";
      };
    };
  };

}

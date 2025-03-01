{ inputs, ... }:
{
  imports = [
    inputs.home-manager.darwinModules.default
    ../../module/nix.nix
  ];

  nix.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "bones";
  users.users.rew.home = "/Users/rew";
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users.rew.imports = [ ./home.nix ];
  };

  security.pam.services.sudo_local.touchIdAuth = true;

  system = {
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

  homebrew = {
    enable = true;
    global = {
      autoUpdate = true;
    };
    masApps = { };
    onActivation = {
      cleanup = "zap";
      autoUpdate = false;
      upgrade = false;
    };
    brews = [ ];
    casks = [
      "discord"
      "ghostty"
      "obsidian"
      "raycast"
      "spotify"
      "visual-studio-code"
      "zen-browser"
    ];
    taps = [
      "homebrew/core"
      "homebrew/cask"
      "homebrew/bundle"
    ];
  };

  system = {
    stateVersion = 5;
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
}

{ inputs, pkgs, ... }:
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
  users.users.rew.shell = pkgs.zsh;
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
    taps = [ ];
    brews = [ ];
    casks = [
      "alcove"
      "bambu-studio"
      "brave-browser"
      "cursor"
      "discord"
      "docker"
      "figma"
      "keymapp"
      "ghostty"
      "obsidian"
      "raycast"
      "raspberry-pi-imager"
      "runelite"
      "spotify"
      "tableplus"
      "zen-browser"
    ];
  };

  system = {
    stateVersion = 5;
    primaryUser = "rew";
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
}

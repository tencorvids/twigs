{
  system.activationScripts.preActivation.text = ''
    if ! xcode-select --version 2>/dev/null; then
      run xcode-select --install
    fi
    if ! /opt/homebrew/bin/brew --version 2>/dev/null; then
      run /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
  '';

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };

    casks = [
      "alcove"
      "bambu-studio"
      "brave-browser"
      "cursor"
      "discord"
      "docker"
      "figma"
      "ghostty"
      "obsidian"
      "raycast"
      "raspberry-pi-imager"
      "runelite"
      "spotify"
      "tableplus"
      "zen-browser"
    ];
    brews = [ ];
  };
}

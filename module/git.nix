{ ... }:
{
  programs.git = {
    enable = true;
    userName = "Andrew Vota";
    userEmail = "rew@tencorvids.com";
    extraConfig.init.defaultBranch = "main";
  };
}

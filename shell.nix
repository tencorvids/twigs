{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "Twigs development shell";

  buildInputs = with pkgs; [
    nixd
    nixfmt-rfc-style
    lua-language-server
    stylua
  ];

  shellHook = ''
    echo "Twigs development environment loaded."
  '';
}

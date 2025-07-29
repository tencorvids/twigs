{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "twigs development shell";

  buildInputs = with pkgs; [
    lua
    lua-language-server
    nixd
    nixfmt-rfc-style
  ];

  shellHook = ''
    echo "twigs development environment loaded."
  '';
}

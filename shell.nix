{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "twigs development shell";

  buildInputs = with pkgs; [
    nixd
    nixfmt-rfc-style
    lua-language-server
    stylua
  ];

  shellHook = ''
    echo "twigs development environment loaded."
  '';
}

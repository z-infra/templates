{ pkgs }:
with pkgs;

mkShell {
  packages = [ pkgs.i ];

  shellHook = ''
    export FOO=BAR
  '';
}

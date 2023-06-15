{
  description = "Mongodb Deploy";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/7f72645b8e69";
    utils.url = "github:numtide/flake-utils";
    compat.url = "github:nix-community/flake-compat";
  };

  outputs = { self, nixpkgs, utils, compat }:
    utils.lib.eachDefaultSystem (system:
      let
        overlays = import ./overlays;
        pkgs = import nixpkgs { inherit system overlays; };
      in {
        packages = rec {
          main = pkgs.hello;
          default = main;
        };
        apps = rec {
          main = utils.lib.mkApp { drv = self.packages.${system}.default; };
          default = main;
        };
        devShells = rec {
          main = import ./devShell.nix { inherit pkgs; };
          default = main;
        };
      });
}

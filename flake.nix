{
  description = "A report built with Pandoc, XeLaTex and a custom font";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        name = "tex-shell";
        buildInputs = [
          pkgs.texlive.combined.scheme-full
        ];
      };
    };
}

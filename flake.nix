{
  description = "Typst flake";


  outputs = { self, nixpkgs }:
    let 
      pkgs = import nixpkgs{system = sys;};
      sys = "x86_64-linux";

    in {
      packages.${sys}.default = pkgs.stdenv.mkDerivation {
        name = "resume";
        src = ./.;
        buildInputs = [
          pkgs.typst
        ];
        installPhase = ''
          mkdir -p $out
          ${pkgs.typst}/bin/typst compile resume.typ
          mv resume.pdf $out/
          '';
      };

    devShells.${sys}.default = pkgs.mkShell {
      name = "resume_shell";
      shellHook = ''
      sh -c "python -m http.server 2>&1" > /dev/null&
      typst watch resume.typ
      '';
      buildInputs = [
        pkgs.typst
      ];
      packages = [
      pkgs.typst-lsp
      pkgs.typst-fmt
     ];

    };

 };
}
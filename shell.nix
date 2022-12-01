{ pkgs ? import <nixpkgs> {
  overlays = [
    (self: super: {
      nodejs = super.nodejs-16_x;
    })
  ];
}}:
  with pkgs; mkShell {
    nativeBuildInputs = [
      nodejs
      nodePackages.yarn
      protobuf
    ];
}

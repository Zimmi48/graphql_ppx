{ pkgs ? import <nixpkgs> {}
, ocamlPackages ? pkgs.ocamlPackages
}:

pkgs.mkShell {

  buildInputs = with ocamlPackages; [
    pkgs.ncurses # for utop
    pkgs.nodejs
    ocaml
    dune
    findlib
    merlin
    utop
    alcotest
    cohttp # to actually send requests
    cohttp-lwt-unix
    cppo
    ppxlib
    ppx_tools_versioned
    yojson
  ];

}

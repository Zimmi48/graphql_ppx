module C = Configurator.V1

let () =
  C.main ~name:"graphql_ppx" (fun _ ->
    let flags = [] in
    C.Flags.write_sexp "dune.flags" flags)

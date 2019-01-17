module MyQuery: {
  type t = Js.t({
    .
    first: Js.t({. inner: option(Js.t({. inner : option(Js.t({. field : string})) })) }),
    second: Js.t({. inner : option(Js.t({. inner : option(Js.t({. f1: string, f2: string})) })) }),
  });

  let make: unit => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });
  let makeWithVariables: Js.t({.}) => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });

  let query: string;
};
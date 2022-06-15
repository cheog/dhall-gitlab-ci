let Prelude = ../Prelude.dhall

let Job = ../Job/Type.dhall

let Rule = ../Rule/Type.dhall

let Include = ../Include/Type.dhall

let Defaults = ../Defaults/Type.dhall

let GitSubmoduleStrategy = ../GitSubmoduleStrategy/Type.dhall

in    { jobs = Prelude.Map.empty Text Job
      , stages = None (List Text)
      , gitSubmoduleStrategy = None GitSubmoduleStrategy
      , variables = None (Prelude.Map.Type Text Text)
      , workflow = None (List Rule)
      , default = None Defaults
      , include = None (List Include)
      }
    : ./Type.dhall

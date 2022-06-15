let Prelude = ../Prelude.dhall

let Job = ../Job/Type.dhall

let Rule = ../Rule/Type.dhall

let Include = ../Include/Type.dhall

let Defaults = ../Defaults/Type.dhall

let GitSubmoduleStrategy = ../GitSubmoduleStrategy/Type.dhall

in  { jobs : Prelude.Map.Type Text Job
    , stages : Optional (List Text)
    , gitSubmoduleStrategy : Optional GitSubmoduleStrategy
    , variables : Optional (Prelude.Map.Type Text Text)
    , workflow : Optional (List Rule)
    , default : Optional Defaults
    , include : Optional (List Include)
    }

let Prelude = ../Prelude.dhall

let Image = ../Image/Type.dhall

let Script = ../Script/Type.dhall

let Service = ../Service/Type.dhall

let ArtifactsSpec = ../ArtifactsSpec/Type.dhall

let CacheSpec = ../CacheSpec/Type.dhall

let Environment = ../Environment/Type.dhall

let Rule = ../Rule/Type.dhall

let Trigger = ../Trigger/Type.dhall

in  { stage : Optional Text
    , image : Optional Image
    , variables : Prelude.Map.Type Text Text
    , rules : Optional (List Rule)
    , dependencies : Optional (List Text) -- This
    , needs : Optional (List Text) -- This
    , allow_failure : Optional Bool -- This
    , tags : Optional (List Text)
    , before_script : Optional Script
    , script : Script
    , services : Optional (List Service)
    , after_script : Optional Script
    , cache : Optional CacheSpec
    , artifacts : Optional ArtifactsSpec
    , resource_group : Optional Text
    , environment : Optional Environment
    , trigger : Optional Trigger
    , timeout : Optional Text
    , extends : Optional (List Text) -- This
    }

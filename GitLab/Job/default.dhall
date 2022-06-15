let Prelude = ../Prelude.dhall

let Image = ../Image/Type.dhall

let Script = ../Script/Type.dhall

let Service = ../Service/Type.dhall

let ArtifactsSpec = ../ArtifactsSpec/Type.dhall

let CacheSpec = ../CacheSpec/Type.dhall

let Rule = ../Rule/Type.dhall

let Environment = ../Environment/Type.dhall

let Trigger = ../Trigger/Type.dhall

in    { stage = None Text
      , image = None Image
      , variables = Prelude.Map.empty Text Text
      , rules = None (List Rule)
      , dependencies = None (List Text)
      , needs = None (List Text)
      , allow_failure = None Bool
      , tags = None (List Text)
      , before_script = None Script
      , script = [] : Script
      , services = None (List Service)
      , after_script = None Script
      , cache = None CacheSpec
      , artifacts = None ArtifactsSpec
      , resource_group = None Text
      , environment = None Environment
      , trigger = None Trigger
      , timeout = None Text
      , extends = None (List Text)
      }
    : ./Type.dhall

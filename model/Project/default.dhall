let Concourse = ./Concourse/package.dhall
let Website = ./Website/package.dhall
in {
    , username = "dorukakinci"
    , concourse = None Concourse.Type
    , website = None Website.Type
}
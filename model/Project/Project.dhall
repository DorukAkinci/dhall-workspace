let Concourse = ./Concourse/package.dhall
let Website = ./Website/package.dhall

in {
    , username: Text
    , password: Text
    , email: Text
    , concourse : Concourse.Type
    , website : Website.Type
}
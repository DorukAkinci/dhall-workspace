let Website = ./Website.dhall
in {
    , Type = Website
    , Environment = ../environment.dhall
    , default = ./default.dhall
}

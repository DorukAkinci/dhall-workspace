let Project = ./model/Project/package.dhall
let Website = ./model/Project/Website/package.dhall
let Environment = ./model/Project/environment.dhall

in Project::{
    , password = "password"
    , email = "test"
    , concourse = { domain = "test", password = "test2" }
    , website = Website::{
            , url = "www.google.com" ++ "/test"
            , environment = Environment.Prod
        }
    }

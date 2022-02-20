let Project = ./model/Project/package.dhall
let Website = ./model/Project/Website/package.dhall
let Environment = ./model/Project/environment.dhall

let test: Project.Type = (Project.default with username = "deneme") // {
    , password = "password"
    , email = "test"
    , concourse = { domain = "test", password = "test2" }
    , website = Website::{
            , url = "www.google.com" ++ "/test"
            , environment = Environment.Prod
        }
    }
in test
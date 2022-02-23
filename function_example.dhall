let Project = ./model/Project/package.dhall
let Website = ./model/Project/Website/package.dhall
let Environment = ./model/Project/environment.dhall

let prepareTestFunction = \(domainName: Text) → \(testInteger: Natural) -> { myFunctionDomain = domainName, value = testInteger }

in Project::{
    , password = "password"
    , email = "test"
    , concourse = { domain = "test", password = "test2" }
    , website = Website::{
            , url = "www.google.com" ++ "/test"
            , environment = Environment.Prod
        }
    } // prepareTestFunction "test" 2 // ./function_as_another_file.dhall "TESTFUNC_ARG1"

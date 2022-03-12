-- EXAMPLE EXECUTION
-- dhall-to-json <<< "./merge_example.dhall ./main_example.dhall"

let Project = ./model/Project/package.dhall
let Environment = ./model/Project/environment.dhall

in λ(project : Project.Type) →
    let handler =
    {
       , Prod = { specialOutput = "custom-prod" }
       , Dev = { specialOutput = "custom-dev" }
       , Test = { specialOutput = "custom-test"}
    }
    in merge handler project.website.environment
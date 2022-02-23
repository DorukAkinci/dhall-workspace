let Concourse = ./Concourse/package.dhall
let Website = ./Website/package.dhall

let Project =
    let Project =
    {-
        This placeholder is where you should define your parameters.

        username: Write the username
        password: Generate random password and set this variable
        email: Write the email param
        concourse: check the concourse model to see how to define the parameters
        website: check the website model to see how to define the parameters
    -}
    {
        , username:
        -- This also another way to define the username documentation
        Text
        , password:
        -- So you can directly define the password parameter's documentation on the fly
        Text
        , email:
        -- Explain email param
         Text
        , concourse :
        -- Show optional model type with NONE usage
        Optional Concourse.Type
        , website :
        -- Show optional model type with SOME usage
        Optional Website.Type
    }

    let example: Project = {
        , username = "test"
        , password = "test"
        , email = "test@test.com"
        , concourse = None Concourse.Type
        , website = Some ( Website.default // { url = "test", environment= (./environment.dhall).Test } )
    }

    in Project

in Project
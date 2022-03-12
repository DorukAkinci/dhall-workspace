let Config =
      { home : Text
      , privateKey : Text
      , publicKey : Text
      }

let function = \(x: Config) -> x.home

let configs: List Config = [
    { home = "test", privateKey = "test", publicKey = "test"},
    { privateKey = "test123", home = "test123",  publicKey = "test123"}
    ]
in configs
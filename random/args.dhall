let example = \(args : { x : Natural, y : Natural }) -> [ args.x, args.y ]

in example

-- -- dhall <<< './args.dhall {x=1, y=2}' --

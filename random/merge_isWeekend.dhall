let DayOfWeek =
      < Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday >

let isWeekend
    : DayOfWeek -> Bool
    = \(day : DayOfWeek) ->
        merge
          { Sunday = True
          , Monday = False
          , Tuesday = False
          , Wednesday = False
          , Thursday = False
          , Friday = False
          , Saturday = True
          }
          day

let test = isWeekend DayOfWeek.Friday
in  test
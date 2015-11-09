Welcome to the Idris REPL!
Idris 0.9.18.1-git:b6c9ef8

Type checking ./Box.idr
Type checking ./Box.idr
Type checking ./Box.idr
λΠ> mkBox unit
When checking an application of constructor Box.mkBox:
        No such variable unit
Type checking ./Box.idr
λΠ> (mkBox unit)
(input):1:8:When checking an application of constructor Box.mkBox:
        Type mismatch between
                Type (Type of unit)
        and
                bool (Expected type)
λΠ> (mkBox mkUnit)
When checking an application of constructor Box.mkBox:
        No such variable mkUnit
λΠ> 

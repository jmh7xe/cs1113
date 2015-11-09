module unit

data unit = mkUnit

u: unit
u = mkUnit

v: unit
v = mkUnit

unit_id: unit -> unit
unit_id mkUnit = mkUnit


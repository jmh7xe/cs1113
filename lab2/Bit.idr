module Bit

--Data type
data Bit = zero | one

--Functions
change: Bit -> Bit
change one = zero
change zero = one 

id: Bit -> Bit
id one = one
id zero = zero

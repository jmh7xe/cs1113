module boolTest

import bool
import pair

data boolTest = bool

b1: bool
b1 = true

b2: bool 
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true 

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

b7: bool
b7 = and true true --expect true

b8: bool
b8 = and true false --expect false

b9: bool
b9 = or false false --expect false

b10: bool
b10 = or true true --expect true

b11: bool
b11 = xor true true --expect false

b12: bool
b12 = xor false false --expect false

b13: bool
b13 = xor false true --expect true

b14: bool
b14 = nand true true --expect false

b15: bool
b15 = nand false false --expect true

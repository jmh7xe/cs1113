module menuTest

import list
import relation
import Dish
import bool
import pair

prices'' : Nat
prices'' = query2 menu sidedishavailable price plus 0
--expect 16

totalPrice'' : Nat
totalPrice'' = query2 menu sidedishavailable price mult 1
--expect 64

dishes'' : String
dishes'' = query2 menu sidedishavailable maindish (++) ""
--expect Cheesburger Turkey Club

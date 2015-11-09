module relationTest

import pair
import bool
import list
import relation
import People
import Person

years'' : Nat
years'' = query2 people gender age plus 0

totalInches'' : Nat
totalInches'' = query2 people gender height mult 1

names'' : String
names'' = query2 people gender name (++) ""

aveAge: pair Nat Nat
aveAge = mkPair (query2 people gender age plus 0) (query2 people gender countOne plus 0)

aveAge' : pair Nat Nat
aveAge' = ave_rel people gender age


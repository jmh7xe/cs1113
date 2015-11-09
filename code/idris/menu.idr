module menu

import bool
import relation

|||A record type that is equivalent to:
|||(data Menu = mkMenu String bool Nat) but where we |||give names to these fields.
|||A menu has main dishes, either a side or no side, |||and prices.

record menu where
  constructor mkMenu
  maindish: String
  sidedishavailable: bool
  price: Nat

--An example value of type menu
m: menu
m = mkMenu "Cheeseburger" true 8

a: menu
a = mkMenu "Salad" false 6

o: menu
o = mkMenu "PastawithMarinara" false 9

r: menu
r = mkMenu "TurkeyClub" true 8

p: Nat
p = price m
--Expect 8

d: String
d = maindish m
--expect "Cheeseburger"

s: bool
s = sidedishavailable m
--expect true

dishes: list menu
dishes = Cheeseburger::Salad::PastaWithMarinara::TurkeyClub


prices'' : Nat
prices'' = query2 menu sidedishavailable price plus 0

totalPrice'' : Nat
totalPrice'' = query2 menu sidedishavailable price mult 1

dishes'' : String
dishes'' = query2 menu sidedishavailable maindish (++) ""


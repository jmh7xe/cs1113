module Dish

import bool
import list

|||A record type that is equivalent to:
|||(data Menu = mkMenu String bool Nat) but where we |||give names to these fields.
|||A menu has main dishes, either a side or no side, |||and prices.

record Dish where
  constructor mkDish
  maindish: String
  sidedishavailable: bool
  price: Nat

--An example value of type menu
Cheeseburger : Dish
Cheeseburger = mkDish "Cheeseburger" true 8

Salad : Dish
Salad = mkDish "Salad" false 6

PastawithMarinara: Dish
PastawithMarinara = mkDish "PastawithMarinara" false 9

TurkeyClub: Dish
TurkeyClub = mkDish "TurkeyClub" true 8

p: Nat
p = price Cheeseburger
--Expect 8

d: String
d = maindish Cheeseburger
--expect "Cheeseburger"

s: bool
s = sidedishavailable Cheeseburger
--expect true

menu: list Dish
menu = Cheeseburger::Salad::PastawithMarinara::TurkeyClub::nil



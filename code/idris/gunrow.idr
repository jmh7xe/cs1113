module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homocides, suicide, unintentional, and other

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362 

austrl: gunrow
austrl = mkGunrow Australia 11 62 5 8

austr: gunrow
austr = mkGunrow Austria 18 268 1 8

hondu: gunrow
hondu = mkGunrow Honduras 648 0 0 0

america: gunrow
america = mkGunrow USA 355 670 16 9

CountryName: gunrow -> country
CountryName (mkGunrow c h s u o) = c

HomicidePer10M: gunrow -> Nat
HomicidePer10M (mkGunrow c h s u o) = h

SuicidePer10M: gunrow -> Nat
SuicidePer10M (mkGunrow c h s u o) = s

UnintentionalPer10M: gunrow -> Nat
UnintentionalPer10M (mkGunrow c h s u o) = u 

OtherPer10M: gunrow -> Nat
OtherPer10M (mkGunrow c h s u o) = o

recordgunrow: list gunrow
recordgunrow = cons argen (cons austrl (cons austr (cons hondu (cons america nil))))


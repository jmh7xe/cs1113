module set_adt_test

import set_adt_hw
import list
import eq
import bool
import pair
import option
import Serialize
import set
import nat

l1: list nat
l1 = (S O)::(S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O)))))::nil

l2: list nat
ls = (S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O))))))::nil

s1: set_adt_hw.set nat
s1 = mkSet (l1)

s2: set_adt_hw.set nat
s2 = mkSet (l2)

s3: set_adt_hw.set nat
s3 = mkSet nil

sin: set nat
sin = set_insert (S (S (S (S (S (S (S (S O)))))))) s1
--expect (S (S (S (S (S (S (S (S O))))))))::(S O)::(S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O)))))::nil

sr: set nat
sr = set_remove (S (S O)) s1
--expect (S O)::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O)))))::nil

sc: nat
sc = set_cardinality s1
--expect (S (S (S (S (S (S O))))))

sm1: bool 
sm1 = set_member (S (S (S (S O)))) s1
--expect true

su: set nat
su = set_union s1 s2
--expect (S O)::(S (S O))::(S (S (S O)))::(S (S (S --(S O))))::(S (S (S (S (S (S O))))))::nil

si: set nat
si = set_intersection s1 s2
--epect (S O)::(S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O)))))::nil

sd: set nat
sd = set_difference s1 s2
--expect (S O)

sf: bool
sf = set_forall evenb s1
--expect false

se: bool 
se = set_exists evenb s2
--expect true

sw1: option nat
sw1 = set_witness evenb s3

sw2: option nat
sw2 = set_witness evenb s1

sp: set (pair nat nat)
sp = set_product s1 s2


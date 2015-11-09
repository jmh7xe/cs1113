module dna

import pair
import list
import nat
import ITE

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand l  = list.map complement_base (l)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 m = map first m

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 m = map second m

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (mkPair h (complement_base h))::(complete t)

basenat: base -> base -> Nat
basenat A A = 1
basenat T T = 1
basenat C C = 1
basenat G G = 1
basenat _ _ = 0

countBase: list base -> base -> Nat
countBase l b = list.foldr plus 0 (map (basenat b) l)

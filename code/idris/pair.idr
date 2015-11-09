module pair

import eq
import bool

data pair a b = mkPair a b

first: pair a b -> a
first (mkPair f s) = f

second: pair a b -> b
second (mkPair f s) = s

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair a1 b1) (mkPair a2 b2) = and (eql a1 a2) (eql b1 b2)

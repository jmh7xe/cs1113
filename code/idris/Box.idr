module Box

import eq
import bool

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox b) = b

instance (eq a) => eq (Box a) where
  eql (mkBox b) (mkBox c) = eql b c 

module nat

import bool
import pair
import eq
import Serialize


data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
iszero: nat -> bool
iszero O = true
iszero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is even otherwise true
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

|||given a natural number return its factorial
fact: nat -> nat
fact O = S O
fact (S n') = mult (S n') (fact n')

|||given a pair of natural numbers, (n, m),  return the difference between them
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

|||given a pair of natural numbers, (x,n),  return the value of x raised to the nth power
exp: nat -> nat -> nat
exp x O = S O
exp O x = O
exp x (S n) = mult x (exp x n)

|||given a pair of natural numbers, (a,b), return true if a is  less than or equal to b, otherwise return false
le: nat -> nat -> bool
le O b = true
le (S a) O = false
le (S a) (S b) = le a b

|||given a pair of natural numbers, (a,b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

|||given a pair of natural numbers, (a,b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt a O = true
gt a b = not (le (S a) (S b))

|||given a pair of natural numbers, (a,b), return true if a is greater than or equal to b
ge: nat -> nat -> bool
ge a O = true
ge O (S b) = false
ge (S a) (S b) = ge a b

|||given a pair of natural numbers, (a,b), return true if a is less than b
lt: nat -> nat -> bool
lt O (S b) = true
lt a b = not (ge (S a) (S b))

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)

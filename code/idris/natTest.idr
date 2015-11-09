module nat

import bool
import pair
import Serialize

data nat = O | S nat

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- four
j: nat
j = S r

--five
k: nat
k = S j

||| returns true if the argument is (represents) zero, otherwise false
iszero: nat -> bool
iszero O = true
iszero _ = false

x: bool
x= nat.iszero r

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

y: nat
y= nat.succ o

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

add1: nat 
add1 = add O O -- expect O

add2: nat
add2 = add O (S (S O)) -- expect O

add3: nat
add3 = add (S (S (S O))) (S (S (S (S O)))) --expect (S (S (S (S (S (S
                                  --(S O)))))))

||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

mult1: nat
mult1 = mult O O --expect O

mult2: nat
mult2 = mult O (S O) --yields O

mult3: nat
mult3 = mult (S (S (S O))) (S (S (S O))) --yields S (S (S (S (S (S (S
                                 --(S (S O))))))))

|||given a natural number return its factorial
fact: nat -> nat
fact O = S O
fact (S n') = mult (S n') (fact n')

fact1: nat
fact1 = fact O -- expect (S O)

fact2: nat
fact2 = fact (S (S (S O))) -- expect (S (S (S (S (S (S O))))))

|||given a pair of natural numbers, (n, m),  return the difference between them
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

sub1: nat
sub1 = sub O (S O) --expect O

sub2: nat
sub2 = sub (S O) O --expect (S O)

sub3: nat
sub3 = sub (S (S (S O))) (S (S O)) --expect (S O)

|||given a pair of natural numbers, (x,n),  return the value of x raised to the nth power
exp: nat -> nat -> nat
exp x O = S O
exp O x = O
exp x (S n) = mult x (exp x n)

exp1: nat
exp1 = exp (S O) O -- expect S O

exp2: nat
exp2 = exp O (S O) --expect O

exp3: nat
exp3 = exp (S (S (S O))) (S (S O)) -- expect (S (S (S (S (S (S (S (S
                                   -- (S O)))))))))

|||given a pair of natural numbers, (a,b), return true if a is  less than or equal to b, otherwise return false
le: nat -> nat -> bool
le O (S b) = true
le (S a) O = false
le (S a) (S b) = le a b

le1: bool
le1 = le O (S (S O)) --expect true

le2: bool
le2 = le (S O) O --expect false

le3: bool
le3 = le (S (S (S O))) (S (S (S (S (S O))))) --expect true

|||given a pair of natural numbers, (a,b), return true if a is equal to b, otherwise return false
eq: nat -> nat -> bool
eq O O = true
eq a b = iszero (sub a b)

eq1: bool
eq1 = eq O O --expect true

eq2: bool
eq2 = eq (S (S O)) (S (S (S (S O)))) --expect false

|||given a pair of natural numbers, (a,b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt a O = true
gt a b = not (le (S a) (S b))

gt1: bool
gt1 = gt (S (S O)) O --expect true

gt2: bool
gt2 = gt (S (S (S O))) (S (S (S (S (S O))))) --expect false

|||given a pair of natural numbers, (a,b), return true if a is greater than or equal to b
ge: nat -> nat -> bool
ge a O = true
ge O (S b) = false
ge (S a) (S b) = ge a b

ge1: bool
ge1 = ge (S O) O --expect true

ge2: bool
ge2 = ge O (S (S O)) --expect false

ge3: bool
ge3 = ge (S (S (S (S O)))) (S (S O)) -- expect true

|||given a pair of natural numbers, (a,b), return true if a is less than b
lt: nat -> nat -> bool
lt O (S b) = true
lt a b = not (ge (S a) (S b))

lt1: bool
lt1 = lt O (S (S O)) --expect true

lt2: bool
lt2 = lt (S (S (S O))) (S (S O)) --expect false

fib:  nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

fib1: nat
fib1 = fib O --expect O

fib2: nat
fib2 = (S O) --expect (S O) 

fib3: nat
fib3 = fib (S (S (S (S O)))) --expect (S (S (S O)))

s: String 
s = toString z

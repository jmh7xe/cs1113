module friend

import bool 

|||A friend is someone who is or isnt trustworthy, who |||has a name, and who has an age in years

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Jane" 18

f2: friend
f2 = mkFriend false "Alice" 20

getage: friend -> Nat
getage (mkFriend b s n) = n

getname: friend -> String
getname (mkFriend b s n) = s

gettrust: friend -> bool
gettrust (mkFriend b s n) = b 

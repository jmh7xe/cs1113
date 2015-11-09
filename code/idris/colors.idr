module color

import pair
import bool

%default total

data color = red | green | blue | magenta | cyan | yellow

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement yellow = blue
complement magenta = green
complement cyan = red

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive b = not (additive b)

complements: (pair color color) -> bool 
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair cyan red) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements _ = false

mixink: (pair color color) -> color
mixink (mkPair cyan magenta) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair yellow magenta) = red






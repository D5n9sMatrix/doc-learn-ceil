#inclib "doc-learn-ceil"
#-lang qb

/'
Testing the Runtime Conversion Functions
As you did with the other conversion functions, you should test these functions
with both positive and negative numbers to see how they behave.
'/

'Need to include the runtime library
#include "crt.bi"

'Set up some variables
Dim As Double myDouble = 12.56, myDouble2 = ­12.56

'Show the various conversion functions with
'positive and negative numbers.
Print "Ceil with";myDouble;" returns ";Ceil(myDouble)
Print "Ceil with ";myDouble2;" returns ";Ceil(myDouble2)
Print
Print "Floor with";myDouble;" returns ";Floor(myDouble)
Print "Floor with ";myDouble2;" returns ";Floor(myDouble2)
Print

'Wait for a keypress
Sleep
End
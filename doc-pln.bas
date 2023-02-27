#inclib "doc-learn-ceil"
#-lang qb

'Need to include the runtime library
#include "crt.bi"

'Set up some variables
Dim As Double myDouble, FracPart, IntPart

'Set the value we want to convert
myDouble = 12.56
'Call the function. Notice that we are using the addressof
'operator @ on IntPart.
racPart = modf(myDouble, @IntPart)
'Get the result.
Print "myDouble = ";myDouble
Print "Fractional part:";FracPart
Print "Integer part:";IntPart

Sleep
End
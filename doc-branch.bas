#inclib "doc-learn-ceil"
#-lang qb

Option Explicit


Dim As Integer myInt

'Let compiler evaluate expression according to precedence
myInt = 5 + 6 * 3
Print "Expression 5 + 6 * 3 = ";myInt

'Force evaluation
myInt = (5 + 6) * 3
Print "Expression (5 + 6) * 3 = ";myInt

'Wait for keypress
Sleep
End
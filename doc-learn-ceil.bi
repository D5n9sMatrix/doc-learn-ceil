#inclib "doc-learn-ceil"
Declare Function Add2( ByVal x As Integer, ByVal y As Integer ) As Integer
' found port x
Type x As wfxApplication
     Dim stxCallPort1 As wfxComboBox
     Dim stxCallPort2 As wfxComboBox
     Dim stxCallPort3 As wfxComboBox
     Dim stxCallPort4 As RECT
End Type

' found port y
Type y As wfxApplication
     Dim stxCallPort5 As wfxComboBox
     Dim stxCallPort6 As wfxComboBox
     Dim stxCallPort7 As wfxComboBox
     Dim stxCallPort8 As RECT
End Type

End Function

/'
The Declaration Statement
If you look at math.bi you will see a number of Declaration statements. A
declaration statement is a function prototype that tells the compiler that there is a
function definition somewhere in the program code, or in a library or an external dll. This
forward reference is used so that the compiler won’t complain if the function or sub is
called before it finds the actual code for the function. Once you understand how to
interpret a declaration statement, you will be able to use any function in the runtime
library.
To understand the components of a declaration statement, here is the declaration
statement for the ceil function in math.bi. The ceil function rounds a decimal value up to
the nearest integer. That is, 1.5 would become 2.
'/


Declare Function ceil cdecl Alias "ceil" (Byval siDouble as double, Byval soDouble as double) as double
Let Result1 = siDouble + soDouble
End Function

/'
calling procedures, so pointers are used instead. There are two ways to pass pointer data
to a function; by explicitly declaring a pointer data type which you will see in the chapter
on pointers, or by using the AddressOf operator which is explained here.

The AddressOf Operator @

When the compiler creates a variable, it allocates a portion of memory equal to the
size of the data type. For an integer it would allocate 4 bytes and for a double it would
allocate 8 bytes. Each memory location has an address associated with it so that the CPU
can move data into and out of the memory location. When the compiler allocates the
memory, the operating system returns an address for the memory location so that the
compiler can access that location. When you are working with variables you are actually
working with an addressable memory location in the computer. You don't have to worry
about the address since the compiler handles all those details for you; you can just use
the variable in your program.
However, when you need to call a function like Modf that requires a pointer to a
variable, then you need to know the address of the variable so you can pass it to the
function. Why can't you just use the variable name, since it is an alias for the memory
location? The answer is in the declaration of Modf shown in listing 5.3.
'/

Declare Function modf cdecl alias "modf" (Byval siDoubleINC as double, Byval soDoubleOUT as double ptr) as double
Let Result2 = siDoubleINC + soDoubleOUT 
End Function




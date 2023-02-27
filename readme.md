# welcome doc-learn-ceil
software doc learn ceil microsoft FreeBasic language


```freebasic
/'
.
├── doc-branch.bas
├── doc-carts.bas
├── doc-learn-ceil.bas
├── doc-learn-ceil.bi
├── doc-learn-ceil.dll
├── doc-learn-ceil.wfbe
├── doc-pln.bas
├── libdoc-learn-ceil.dll.a
├── license
├── manifest.xml
├── matrix
│   └── gnu
│       ├── bin
│       │   ├── doc-branch.bas
│       │   ├── doc-carts.bas
│       │   ├── doc-learn-ceil.bas
│       │   ├── doc-learn-ceil.bi
│       │   ├── doc-learn-ceil.dll
│       │   └── doc-pln.bas
│       ├── lib
│       │   └── libdoc-learn-ceil.dll.a
│       └── test
│           └── resource.rc
├── readme.md
└── resource.rc
'/
```

The SHL and SHR operators will be discussed in the next section, Bitwise
Operators. They are included here to show where they fall in the precedence rules.
Looking at the table and the equation 5 + 6 * 3 you can see that this will evaluate
to 23 not 33, since multiplication has a higher precedence then addition. The compiler
will read the expression from left to right, pushing values onto an internal stack until it
can resolve part or all of the equation. For this equation 5 will be read and pushed, then
the + operator will be read and pushed onto the stack. Since the + operator requires two
operands, the compiler will read the next element of the expression which will be the *
operator. This operator also requires two operands, so * will be pushed onto the stack and
the 3 will be read. Since * takes priority over +, the 6 and 3 will be multiplied, and that
value will be stored on the stack. At this point there is a 5, + and 18 on the stack. Since
there is only one operator left and two operands, the 5 and 18 will be added together to
make 23, which will be returned as the result of the expression.
If you wanted to make sure that 5 + 6 gets evaluated first, then you would use
parenthesis to force the evaluation. You would write the parenthesized expression as (5 +
6) * 3. Since the parenthesis have the highest precedence, the expression they contain
will be evaluated before the multiplication. The evaluation process here is the same as
the previous process. The ( is treated as an operator and is pushed onto the stack. The 5,
+, and 6 are read followed by the ). The ) signals the end of the parenthesis operation, so
the 5 and 6 are added together and pushed onto the stack. The * is read along with the 3.
The stack at this point contains an 11, * and 3. The 11 and 3 are multiplied together and
33 is returned as the result of the evaluation.
You can also embed parenthesis within parenthesis. Each time the compiler
encounters a (, it begins a new parenthesis operation. When it encounters a ), the last ( is
used to evaluate the items contained within the ( and ) and that result is either placed on
the stack for further evaluation or returned as a result. Each ( must be match to a ) or a
compiler error will occur.
The following program demonstrates both implicit evaluation and forced
evaluation.

```freebasic
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
```
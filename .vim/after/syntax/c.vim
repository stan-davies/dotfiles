syntax match stMacro "\v[A-Z]+(_[A-Z]+)*"

syntax keyword stConst TRUE FALSE NULL
highlight def link stConst cNumber 

syntax match stComment "// ?\w*"
highlight def link stComment cComment

syntax match cOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syntax match cOperator	"<<\|>>\|&&\|||\|++\|--\|->"
syntax match cOperator	"[.!~*&%<>^|=+-]"

syntax match stSemi     ";"
highlight def link stSemi cComment

syntax match cOperator	"/[^/*=]"me=e-1
syntax match cOperator	"/$"
syntax match cOperator  "&&\|||"
" syn match cOperator	"[][]"
highlight def link stOperator Operator

syntax match stParen    "(" contains=cParen
syntax match stFunction "\(\w\|\d\|_\|-\)\+(" contains=stParen
highlight def link stFunction cFunction

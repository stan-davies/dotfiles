" Main one at `/opt/homebrew/Cellar/vim/9.1.1450/share/vim/vim91/syntax/c.vim`
" (for whatever ridiculous reason).


syntax match stMacro "\v([A-Z]+(_[A-Z]+)*)\w+"

syntax keyword stConst TRUE FALSE NULL
highlight def link stConst cNumber 


syntax match stComment  "// ?\w*"
highlight def link stComment cComment

" syntax clear cStructure
" syntax keyword stStruct struct
" highlight def link stStruct cString
" syntax match stTypedef  "struct\s*\zs\w*"
" highlight def link stTypedef cType

syntax match cOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syntax match cOperator	"<<\|>>\|&&\|||\|++\|--\|->"
syntax match cOperator	"[.!~*&%<>^|=+-]"

syntax match cOperator	"/[^/*=]"me=e-1
syntax match cOperator	"/$"
syntax match cOperator  "&&\|||"
" syn match cOperator	"[][]"
highlight def link stOperator Operator

syntax match stParen    "(" contains=cParen
syntax match stFunction "\(\w\|\d\|_\|-\)\+(" contains=stParen
highlight def link stFunction cFunction

" Main one at `/opt/homebrew/Cellar/vim/9.1.1450/share/vim/vim91/syntax/c.vim`
" (for whatever ridiculous reason).


syntax match stMacro "\v([A-Z]+(_[A-Z]+)*)\w+"

syntax keyword stConst TRUE FALSE NULL
highlight def link stConst cConstant


syntax match stComment  "// ?\w*"
highlight def link stComment cComment

" Very nearly works but not quite, stStructName picks up too much other stuff.
" syntax clear cStructure
" syntax keyword cStructure struct union enum nextgroup=stStructName
" syntax match stStructName " \w\+" contained
" highlight def link stStructName cType

syntax match cOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syntax match cOperator	"<<\|>>\|&&\|||\|++\|--\|->"
syntax match cOperator	"[.!~*&%<>^|=+-]"

syntax match cOperator	"/[^/*=]"me=e-1
syntax match cOperator	"/$"
syntax match cOperator  "&&\|||"
" syn match cOperator	"[][]"
highlight def link stOperator Operator

syntax match stParen    "(" contains=cParen
syntax match stFunction "\(\w\|\d\|_\)\+(" contains=stParen
highlight def link stFunction cFunction

highlight clear
let g:colors_name = 'stand'

" editor

highlight CursorLine    ctermbg=8 cterm=bold
highlight LineNr        ctermfg=8
highlight CursorLineNr  ctermfg=White cterm=bold
highlight ColorColumn   ctermbg=Red

" bracket matching

highlight MatchParen    ctermbg=4

" C syntax

highlight cComment      ctermfg=7
highlight cString       ctermfg=Blue
highlight cNumber       ctermfg=Magenta
highlight cFloat        ctermfg=Magenta
highlight cType         ctermfg=Cyan
highlight cFunction     ctermfg=Green cterm=bold

highlight cStatement    ctermfg=Red
highlight cLabel        ctermfg=Red
highlight cConditional  ctermfg=Red
highlight cRepeat       ctermfg=Red
highlight PreProc       ctermfg=Red

highlight cStorageClass ctermfg=Red
highlight cStructure    ctermfg=Blue

highlight cSpecial      ctermfg=DarkBlue
highlight Operator      ctermfg=Red
highlight stMacro       ctermfg=Yellow

" asm syntax

highlight Identifier    ctermfg=Red
highlight Number        ctermfg=Magenta
highlight Statement     ctermfg=Blue
highlight Label         ctermfg=Yellow
highlight Comment       ctermfg=7
highlight stRegister    ctermfg=Cyan

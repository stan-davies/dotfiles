syntax match stRegister "[wxds][0-9]\+"
syntax match stLabel    "_[a-zA-Z]\+"
highlight def link stLabel Label
syntax keyword stSpecialReg sp xzr
highlight def link stSpecialReg stRegister

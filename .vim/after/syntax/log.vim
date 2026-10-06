syntax match    lg_error        "\cerror"
highlight       lg_error        ctermfg=Red

syntax match    lg_warning      "\cwarning"
highlight       lg_warning      ctermfg=Yellow

syntax match    lg_numeric      "\d"
syntax match    lg_numeric      "\d\.\d"
highlight       lg_numeric      ctermfg=Magenta

syntax match    lg_version      "v\d\(\.\d\)\+\(-\w*\)\="
highlight       lg_version      ctermfg=Blue

syntax match    lg_separator    "\s:\s"
syntax match    lg_separator    "-\{2,}"
highlight       lg_separator    ctermfg=DarkGrey

        " Not perfect because regex lacks memory. Will match space between two
        " strings and fail to match multi-line strings.
syntax match    lg_string       "'.*'"
highlight       lg_string       ctermfg=Green

syntax match    lg_code         "`.*`"
highlight       lg_code         cterm=Italic

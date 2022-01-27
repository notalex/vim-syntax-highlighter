syn match pythonOperator    '\V=\|:\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!=\|:='
syn keyword pythonClassVar  self cls mcs
syn match dotOperator '\.'
syn match roundBraces '(\|)'

hi pythonClassVar  ctermfg=lightgreen guifg=lightgreen
hi roundBraces     ctermfg=241 cterm=bold

hi def link dotOperator Operator

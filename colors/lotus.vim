set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'lotus'

"===================== General ====================="

hi Normal guibg=#262626 guifg=white
hi CursorLine cterm=NONE ctermbg=234
" hi Cursor		ctermfg=red	guifg=lightgray
" hi CursorIM		ctermfg=red	guifg=lightgray
" hi Directory		ctermfg=red	guifg=lightgray
" hi DiffAdd		ctermfg=red	guifg=lightgray
" hi DiffChange		ctermfg=red	guifg=lightgray
" hi DiffDelete		ctermfg=red	guifg=lightgray
" hi DiffText		ctermfg=red	guifg=lightgray
" hi ErrorMsg		ctermfg=red	guifg=lightgray
hi VertSplit cterm=none ctermfg=DarkGray guifg=DarkGray
hi Folded ctermfg=black ctermbg=grey
" hi FoldColumn		ctermfg=red	guifg=lightgray
" hi IncSearch		ctermfg=red	guifg=lightgray
" hi ModeMsg		ctermfg=red	guifg=lightgray
" hi MoreMsg		ctermfg=red	guifg=lightgray
" hi NonText		ctermfg=red	guifg=lightgray
" hi Question		ctermfg=red	guifg=lightgray
" hi Search		ctermfg=red	guifg=lightgray
" hi SpecialKey		ctermfg=red	guifg=lightgray
hi StatusLine ctermfg=DarkCyan guifg=DarkCyan
hi StatusLineNC ctermfg=DarkGray guifg=LightGray
" hi Title		ctermfg=red	guifg=lightgray
" hi Visual		ctermfg=red	guifg=lightgray
" hi VisualNOS		ctermfg=red	guifg=lightgray
" hi WarningMsg		ctermfg=red	guifg=lightgray
" hi WildMenu		ctermfg=red	guifg=lightgray
" hi Menu		ctermfg=red	guifg=lightgray
" hi Scrollbar		ctermfg=red	guifg=lightgray
" hi Tooltip		ctermfg=red	guifg=lightgray
hi helpExample ctermfg=118

hi TabLineFill ctermfg=DarkGray
hi TabLine ctermbg=DarkGray ctermfg=Black cterm=none
hi TabLineSel ctermbg=none ctermfg=Cyan

hi Pmenu ctermfg=2 ctermbg=black
hi PmenuSel ctermfg=white ctermbg=black

"================== Syntax Groups =================="

hi String ctermfg=185 guifg=#d7d75f cterm=NONE
hi Regexp ctermfg=208 guifg=#ff8700
hi LineNr		ctermfg=252	guifg=#d0d0d0
hi Comment		ctermfg=244	guifg=#808080
hi Constant		ctermfg=44	guifg=#00d7d7 cterm=bold gui=bold
hi Identifier		ctermfg=252	guifg=#d0d0d0
hi Statement		ctermfg=32	guifg=#0087d7
hi PreProc		ctermfg=252	guifg=white
hi Type		ctermfg=167	guifg=white
hi Special		ctermfg=252	guifg=white
hi Underlined   ctermfg=grey  guifg=red
hi Ignore		ctermfg=red	guifg=red
hi Error		ctermfg=160 ctermbg=none	guifg=#d70000
hi Todo			ctermfg=red	guifg=red
hi Integer ctermfg=35 guifg=#00af5f
hi ClassName  ctermfg=245	guifg=#8a8a8a cterm=bold gui=bold
hi Conditional ctermfg=red guifg=red
hi Repeat ctermfg=red cterm=bold guifg=red
hi Include ctermfg=247 guifg=#d0d0d0 cterm=bold

"===================== Ruby ========================"

hi rubyEscape			ctermfg=252	guifg=#d0d0d0
hi rubyInterpolationDelimiter	ctermfg=252	guifg=#d0d0d0
hi rubyInterpolation		ctermfg=252	guifg=#d0d0d0
hi rubyPredefinedVariable	ctermfg=red	guifg=red
hi rubyInstanceVariable		ctermfg=252	guifg=#d0d0d0
hi rubyClassVariable		ctermfg=red	guifg=red
hi rubyGlobalVariable		ctermfg=red	guifg=red
hi rubyPredefinedVariable	ctermfg=red	guifg=red
hi rubyNoInterpolation		ctermfg=red	guifg=red
hi rubyDelimEscape		ctermfg=red	guifg=red
hi rubyNestedParentheses	ctermfg=red	guifg=red
hi rubyNestedCurlyBraces	ctermfg=red	guifg=red
hi rubyNestedAngleBrackets	ctermfg=red	guifg=red
hi rubyNestedSquareBrackets	ctermfg=red	guifg=red
hi rubyASCIICode		ctermfg=red	guifg=red
hi def link rubyInteger			Integer
hi rubyFloat			ctermfg=185	guifg=#d7d75f
hi rubyLocalVariableOrMethod	ctermfg=red	guifg=red
hi rubyBlockArgument		ctermfg=red	guifg=red
hi def link rubyConstant			Constant
hi rubySymbol			ctermfg=157	guifg=#afffaf
hi rubyStringSpecial		ctermfg=red	guifg=red
hi rubyBlockParameter		ctermfg=252	guifg=#d0d0d0
hi rubyPredefinedConstant	ctermfg=red	guifg=red
hi def link rubyRegexp        Regexp
hi def link rubyString        String
hi rubyBoolean			ctermfg=252	guifg=#d0d0d0
hi rubyPseudoVariable		ctermfg=252	guifg=#d0d0d0
hi rubyMethodDeclaration	ctermfg=red	guifg=red
hi rubyClassDeclaration		ctermfg=red	guifg=red
hi rubyModuleDeclaration	ctermfg=red	guifg=red
hi rubyFunction			ctermfg=255	guifg=#d0d0d0
hi rubyDefine			ctermfg=darkblue	guifg=#00afff
hi def link rubyClass			    ClassName
hi def link rubyModule			  ClassName
hi rubyBlock			ctermfg=252	guifg=#d0d0d0
hi rubyConditional		ctermfg=64	guifg=#5f8700
hi rubyRepeat			ctermfg=81	guifg=#5fd7ff
hi rubyControl			ctermfg=45	guifg=#00d7ff
hi rubyKeyword			ctermfg=red	guifg=red
hi rubyOperator			ctermfg=red	guifg=red
hi rubyBeginEnd			ctermfg=red	guifg=red
hi rubyAccess			ctermfg=32	guifg=#0087d7
hi rubyAttribute		ctermfg=252	guifg=#d0d0d0
hi rubyEval			ctermfg=red	guifg=red
hi rubyException		ctermfg=red	guifg=red
hi rubyInclude			ctermfg=255	guifg=#d0d0d0
hi rubySharpBang		ctermfg=red	guifg=red
hi rubyTodo			ctermfg=34	guifg=#00af00
hi def link rubyComment			Comment
hi rubyDocumentation		ctermfg=red	guifg=red
hi rubyData			ctermfg=red	guifg=red

hi railsMethod    ctermfg=107 guifg=#87af5f
hi railsUserClass  ctermfg=28 cterm=bold
hi railsUserMethod  ctermfg=107 guifg=#87af5f

" hi rubyRailsError	ctermfg=lightgray	guifg=lightgray
" hi rubyRailsDeprecatedMethod	ctermfg=lightgray	guifg=lightgray
" hi erubyRailsMethod	ctermfg=lightgray	guifg=lightgray
" hi erubyRailsRenderMethod	ctermfg=lightgray	guifg=lightgray
" hi erubyRailsHelperMethod	ctermfg=lightgray	guifg=lightgray
"hi javascriptRailsClass	ctermfg=lightgray	guifg=lightgray
"hi javascriptRailsFunction	ctermfg=lightgray	guifg=lightgray
"hi htmlError	ctermfg=lightgray	guifg=lightgray
hi htmlSpecialChar ctermfg=70 guifg=lightgray
"hi javaScriptExpression	ctermfg=lightgray	guifg=lightgray
"hi htmlString	ctermfg=lightgray	guifg=lightgray
"hi htmlValue	ctermfg=lightgray	guifg=lightgray
"hi htmlTagN	ctermfg=lightgray	guifg=lightgray
"hi htmlTagError	ctermfg=lightgray	guifg=lightgray
hi htmlEndTag	ctermfg=248	guifg=#a8a8a8
"hi htmlArg	ctermfg=lightgray	guifg=lightgray
"hi htmlEvent	ctermfg=lightgray	guifg=lightgray
"hi htmlCssDefinition	ctermfg=lightgray	guifg=lightgray
hi htmlTag	ctermfg=248	guifg=#a8a8a8
hi htmlTagName	ctermfg=248	guifg=#a8a8a8
hi htmlSpecialTagName ctermfg=183 guifg=lightgray
"hi htmlCommentPart	ctermfg=lightgray	guifg=lightgray
"hi htmlCommentError	ctermfg=lightgray	guifg=lightgray
"hi htmlComment	ctermfg=lightgray	guifg=lightgray
"hi htmlPreStmt	ctermfg=lightgray	guifg=lightgray
"hi htmlPreError	ctermfg=lightgray	guifg=lightgray
"hi htmlPreAttr	ctermfg=lightgray	guifg=lightgray
"hi htmlPreProc	ctermfg=lightgray	guifg=lightgray
"hi htmlPreProcAttrError	ctermfg=lightgray	guifg=lightgray
"hi htmlPreProcAttrName	ctermfg=lightgray	guifg=lightgray
"hi htmlLink	ctermfg=lightgray	guifg=lightgray
"hi javaScript	ctermfg=lightgray	guifg=lightgray
"hi htmlBoldUnderline	ctermfg=lightgray	guifg=lightgray
"hi htmlBoldItalic	ctermfg=lightgray	guifg=lightgray
"hi htmlBold	ctermfg=lightgray	guifg=lightgray
"hi htmlBoldUnderlineItalic	ctermfg=lightgray	guifg=lightgray
"hi htmlBoldItalicUnderline	ctermfg=lightgray	guifg=lightgray
"hi htmlUnderlineBold	ctermfg=lightgray	guifg=lightgray
"hi htmlUnderlineItalic	ctermfg=lightgray	guifg=lightgray
"hi htmlUnderline	ctermfg=lightgray	guifg=lightgray
"hi htmlUnderlineBoldItalic	ctermfg=lightgray	guifg=lightgray
"hi htmlUnderlineItalicBold	ctermfg=lightgray	guifg=lightgray
"hi htmlItalicBold	ctermfg=lightgray	guifg=lightgray
"hi htmlItalicUnderline	ctermfg=lightgray	guifg=lightgray
"hi htmlItalic	ctermfg=lightgray	guifg=lightgray
"hi htmlItalicBoldUnderline	ctermfg=lightgray	guifg=lightgray
"hi htmlItalicUnderlineBold	ctermfg=lightgray	guifg=lightgray
hi htmlH1	ctermfg=white	guifg=white
"hi htmlH2	ctermfg=lightgray	guifg=lightgray
"hi htmlH3	ctermfg=lightgray	guifg=lightgray
"hi htmlH4	ctermfg=lightgray	guifg=lightgray
"hi htmlH5	ctermfg=lightgray	guifg=lightgray
"hi htmlH6	ctermfg=lightgray	guifg=lightgray
"hi htmlTitle	ctermfg=lightgray	guifg=lightgray
"hi cssStyle	ctermfg=lightgray	guifg=lightgray
"hi htmlHead	ctermfg=lightgray	guifg=lightgray
"hi javaScriptCommentTodo	ctermfg=lightgray	guifg=lightgray
"hi javaScriptLineComment	ctermfg=lightgray	guifg=lightgray
"hi javaScriptCommentSkip	ctermfg=lightgray	guifg=lightgray
"hi javaScriptComment	ctermfg=lightgray	guifg=lightgray
"hi javaScriptSpecial	ctermfg=lightgray	guifg=lightgray
"hi javaScriptStringD	ctermfg=lightgray	guifg=lightgray
"hi javaScriptStringS	ctermfg=lightgray	guifg=lightgray
"hi javaScriptSpecialCharacter	ctermfg=lightgray	guifg=lightgray
"hi javaScriptNumber	ctermfg=lightgray	guifg=lightgray
"hi javaScriptRegexpString	ctermfg=lightgray	guifg=lightgray
"hi javaScriptConditional	ctermfg=lightgray	guifg=lightgray
"hi javaScriptRepeat	ctermfg=lightgray	guifg=lightgray
"hi javaScriptBranch	ctermfg=lightgray	guifg=lightgray
"hi javaScriptOperator	ctermfg=lightgray	guifg=lightgray
"hi javaScriptType	ctermfg=lightgray	guifg=lightgray
"hi javaScriptStatement	ctermfg=lightgray	guifg=lightgray
"hi javaScriptBoolean	ctermfg=lightgray	guifg=lightgray
"hi javaScriptNull	ctermfg=lightgray	guifg=lightgray
"hi javaScriptIdentifier	ctermfg=lightgray	guifg=lightgray
"hi javaScriptLabel	ctermfg=lightgray	guifg=lightgray
"hi javaScriptException	ctermfg=lightgray	guifg=lightgray
"hi javaScriptMessage	ctermfg=lightgray	guifg=lightgray
"hi javaScriptDeprecated	ctermfg=lightgray	guifg=lightgray
"hi javaScriptReserved	ctermfg=lightgray	guifg=lightgray
"hi javaScriptFunction	ctermfg=lightgray	guifg=lightgray
"hi javaScriptBraces	ctermfg=lightgray	guifg=lightgray
"hi javaScriptBraces	ctermfg=lightgray	guifg=lightgray
"hi javaScriptParens	ctermfg=lightgray	guifg=lightgray
"hi htmlCssStyleComment	ctermfg=lightgray	guifg=lightgray
hi htmlScriptTag ctermfg=248 guifg=lightgray
"hi htmlEventTag	ctermfg=lightgray	guifg=lightgray
"hi htmlEventSQ	ctermfg=lightgray	guifg=lightgray
"hi htmlEventDQ	ctermfg=lightgray	guifg=lightgray
"hi vbStatement	ctermfg=lightgray	guifg=lightgray
"hi vbFunction	ctermfg=lightgray	guifg=lightgray
"hi vbMethods	ctermfg=lightgray	guifg=lightgray
"hi vbEvents	ctermfg=lightgray	guifg=lightgray
"hi vbTypes	ctermfg=lightgray	guifg=lightgray
"hi vbOperator	ctermfg=lightgray	guifg=lightgray
"hi vbConst	ctermfg=lightgray	guifg=lightgray
"hi vbTodo	ctermfg=lightgray	guifg=lightgray
"hi vbNumber	ctermfg=lightgray	guifg=lightgray
"hi vbString	ctermfg=lightgray	guifg=lightgray
"hi vbComment	ctermfg=lightgray	guifg=lightgray
"hi vbLineNumber	ctermfg=lightgray	guifg=lightgray
"hi vbTypeSpecifier	ctermfg=lightgray	guifg=lightgray
"hi cssTagName	ctermfg=lightgray	guifg=lightgray
"hi cssDefinition	ctermfg=lightgray	guifg=lightgray
"hi cssSelectorOp	ctermfg=lightgray	guifg=lightgray
"hi cssSelectorOp2	ctermfg=lightgray	guifg=lightgray
"hi cssUnicodeEscape	ctermfg=lightgray	guifg=lightgray
"hi cssStringQ	ctermfg=lightgray	guifg=lightgray
"hi cssStringQQ	ctermfg=lightgray	guifg=lightgray
"hi cssIdentifier	ctermfg=lightgray	guifg=lightgray
"hi cssMediaType	ctermfg=lightgray	guifg=lightgray
"hi cssMedia	ctermfg=lightgray	guifg=lightgray
"hi cssMediaComma	ctermfg=lightgray	guifg=lightgray
"hi cssMediaBlock	ctermfg=lightgray	guifg=lightgray
"hi cssBraces	ctermfg=lightgray	guifg=lightgray
"hi cssError	ctermfg=lightgray	guifg=lightgray
"hi cssComment	ctermfg=lightgray	guifg=lightgray
"hi cssURL	ctermfg=lightgray	guifg=lightgray
"hi cssValueInteger	ctermfg=lightgray	guifg=lightgray
"hi cssValueNumber	ctermfg=lightgray	guifg=lightgray
"hi cssValueLength	ctermfg=lightgray	guifg=lightgray
"hi cssValueAngle	ctermfg=lightgray	guifg=lightgray
"hi cssValueTime	ctermfg=lightgray	guifg=lightgray
"hi cssValueFrequency	ctermfg=lightgray	guifg=lightgray
"hi cssFontDescriptor	ctermfg=lightgray	guifg=lightgray
"hi cssFontProp	ctermfg=lightgray	guifg=lightgray
"hi cssFontAttr	ctermfg=lightgray	guifg=lightgray
"hi cssCommonAttr	ctermfg=lightgray	guifg=lightgray
"hi cssFontDescriptorProp	ctermfg=lightgray	guifg=lightgray
"hi cssFontDescriptorFunction	ctermfg=lightgray	guifg=lightgray
"hi cssUnicodeRange	ctermfg=lightgray	guifg=lightgray
"hi cssColor	ctermfg=lightgray	guifg=lightgray
"hi cssFunction	ctermfg=lightgray	guifg=lightgray
"hi cssImportant	ctermfg=lightgray	guifg=lightgray
"hi cssColorProp	ctermfg=lightgray	guifg=lightgray
"hi cssColorAttr	ctermfg=lightgray	guifg=lightgray
"hi cssTextProp	ctermfg=lightgray	guifg=lightgray
"hi cssTextAttr	ctermfg=lightgray	guifg=lightgray
"hi cssBoxProp	ctermfg=lightgray	guifg=lightgray
"hi cssBoxAttr	ctermfg=lightgray	guifg=lightgray
"hi cssGeneratedContentProp	ctermfg=lightgray	guifg=lightgray
"hi cssGeneratedContentAttr	ctermfg=lightgray	guifg=lightgray
"hi cssAurlAttr	ctermfg=lightgray	guifg=lightgray
"hi cssPagingProp	ctermfg=lightgray	guifg=lightgray
"hi cssPagingAttr	ctermfg=lightgray	guifg=lightgray
"hi cssUIProp	ctermfg=lightgray	guifg=lightgray
"hi cssUIAttr	ctermfg=lightgray	guifg=lightgray
"hi cssRenderAttr	ctermfg=lightgray	guifg=lightgray
"hi cssRenderProp	ctermfg=lightgray	guifg=lightgray
"hi cssAuralProp	ctermfg=lightgray	guifg=lightgray
"hi cssTableProp	ctermfg=lightgray	guifg=lightgray
"hi cssTableAttr	ctermfg=lightgray	guifg=lightgray
"hi cssInclude	ctermfg=lightgray	guifg=lightgray
"hi cssBraceError	ctermfg=lightgray	guifg=lightgray
"hi cssPreudoClassId	ctermfg=lightgray	guifg=lightgray
"hi cssPseudoClass	ctermfg=lightgray	guifg=lightgray
"hi cssPseudoClassLang	ctermfg=lightgray	guifg=lightgray
"hi cssSpecialCharQQ	ctermfg=lightgray	guifg=lightgray
"hi cssSpecialCharQ	ctermfg=lightgray	guifg=lightgray
"hi erubyOneLiner	ctermfg=lightgray	guifg=lightgray
"hi erubyBlock	ctermfg=lightgray	guifg=lightgray
"hi erubyExpression	ctermfg=lightgray	guifg=lightgray
"hi erubyComment	ctermfg=lightgray	guifg=lightgray

"================== coffee ========================="

hi def link coffeeStatement Statement
hi def link coffeeRepeat Repeat
hi def link coffeeConditional Conditional
hi def link coffeeException Exception
hi def link coffeeKeyword Keyword
hi def link coffeeOperator Operator
hi def link coffeeExtendedOp coffeeOperator
hi def link coffeeSpecialOp SpecialChar
hi def link coffeeBoolean Boolean
hi def link coffeeGlobal Type
hi def link coffeeSpecialVar Special
hi def link coffeeSpecialIdent Identifier
hi def link coffeeObject Structure
hi def link coffeeConstant Constant
hi def link coffeeString String
hi def link coffeeNumber Number
hi def link coffeeFloat Float
hi def link coffeeReservedError Error
hi def link coffeeObjAssign Identifier
hi def link coffeeTodo Todo
hi def link coffeeComment Comment
hi def link coffeeBlockComment coffeeComment
hi def link coffeeHeregexComment coffeeComment
hi def link coffeeEmbedDelim Delimiter
hi def link coffeeInterpDelim PreProc
hi def link coffeeEscape SpecialChar
hi def link coffeeRegexCharSet coffeeRegexp
hi def link coffeeRegexp           Regexp
hi def link coffeeHeregex coffeeRegexp
hi def link coffeeHeredoc String
hi def link coffeeSemicolonError Error
hi def link coffeeHeregexCharSet coffeeHeregex
hi def link coffeeSpaceError Error
hi def link coffeeDotAccess coffeeExtendedOp
hi def link coffeeProtoAccess coffeeExtendedOp

" These are highlighted the same as commas since they tend to go together.
hi def link coffeeBlock coffeeSpecialOp
hi def link coffeeBracket coffeeBlock
hi def link coffeeCurly coffeeBlock
hi def link coffeeParen coffeeBlock

hi coffeePrototypeName  ctermfg=150
hi coffeeConditional cterm=bold ctermfg=lightblue
hi coffeeExtendedOp cterm=bold ctermfg=lightblue

"================== markdown ========================="
hi markdownUrl ctermfg=241
hi markdownCode ctermfg=144
hi markdownHeadingDelimiter cterm=undercurl ctermfg=160
hi markdownItalic ctermbg=NONE

" Diff
hi DiffText ctermbg=LightYellow ctermfg=Black " changed portion in partial line
hi DiffChange ctermbg=none                  " unchanged portion in partial line

hi DiffAdd ctermbg=LightYellow ctermfg=Black
hi DiffDelete ctermbg=none ctermfg=Red

"================== readline ========================="
hi readlineFunction ctermfg=41
hi readlineVariable ctermfg=145 cterm=bold

" Match parenthesis highlighted on account of matchparen standard plugin.
hi MatchParen ctermbg=red guibg=red

" Neovim +winhighlight
hi ActiveWindow ctermbg=16
hi InactiveWindow ctermbg=233

"================== clojure ========================="
hi clojureFunc ctermfg=172
hi clojureMacro ctermfg=172
hi clojureDefine ctermfg=172
hi clojureSymbol ctermfg=252
hi clojureSpecial ctermfg=172
hi clojureMap ctermfg=214 cterm=bold
hi clojureParen ctermfg=135 cterm=bold
hi clojureVector ctermfg=214 cterm=bold

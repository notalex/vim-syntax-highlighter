" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'coffee'
  finish
endif

" Include JavaScript for coffeeEmbed.
syn include @coffeeJS syntax/javascript.vim
silent! unlet b:current_syntax

" Highlight long strings.
syntax sync fromstart

" CoffeeScript identifiers can have dollar signs.
setlocal isident+=$

" These are `matches` instead of `keywords` because vim's highlighting
" priority for keywords is higher than matches. This causes keywords to be
" highlighted inside matches, even if a match says it shouldn't contain them --
" like with coffeeAssign and coffeeDot.
syn match coffeeStatement /\<\%(return\|break\|continue\|throw\)\>/ display

syn match coffeeRepeat /\<\%(for\|while\|until\|loop\)\>/ display

syn match coffeeConditional /\<\%(if\|else\|unless\|switch\|when\|then\)\>/
\                           display

syn match coffeeException /\<\%(try\|catch\|finally\)\>/ display

syn match coffeeKeyword /\<\%(new\|in\|of\|by\|and\|or\|not\|is\|isnt\|class\|extends\|super\|do\)\>/
\                       display
" The `own` keyword is only a keyword after `for`.
syn match coffeeKeyword /\<for\s\+own\>/ contained containedin=coffeeRepeat
\                       display

syn match coffeeOperator /\<\%(instanceof\|typeof\|delete\)\>/ display

" The first case matches symbol operators only if they have an operand before.
syn match coffeeExtendedOp /\%(\S\s*\)\@<=[+\-*/%&|\^=!<>?.]\{-1,}\|[-=]>\|--\|++\|:/
\                          display
syn match coffeeExtendedOp /\<\%(and\|or\)=/ display

" This is separate from `coffeeExtendedOp` to help differentiate commas from
" dots.
syn match coffeeSpecialOp /[,;]/ display

syn match coffeeBoolean /\<\%(true\|on\|yes\|false\|off\|no\)\>/ display

syn match coffeeGlobal /\<\%(null\|undefined\)\>/ display

" A special variable
syn match coffeeSpecialVar /\<\%(this\|prototype\|arguments\)\>/ display

" An @-variable
syn match coffeeSpecialIdent /@\%(\I\i*\)\?/ display

" A class-like name that starts with a capital letter
syn match coffeeObject /\<\u\w*\>/ display

" A constant-like name in SCREAMING_CAPS
syn match coffeeConstant /\<\u[A-Z0-9_]\+\>/ display

" A variable name
syn cluster coffeeIdentifier contains=coffeeSpecialVar,coffeeSpecialIdent,
\                                     coffeeObject,coffeeConstant

" A non-interpolated string
syn cluster coffeeBasicString contains=@Spell,coffeeEscape
" An interpolated string
syn cluster coffeeInterpString contains=@coffeeBasicString,coffeeInterp

" Regular strings
syn region coffeeString start=/"/ skip=/\\\\\|\\"/ end=/"/
\                       contains=@coffeeInterpString
syn region coffeeString start=/'/ skip=/\\\\\|\\'/ end=/'/
\                       contains=@coffeeBasicString

" A integer, including a leading plus or minus
syn match coffeeNumber /\i\@<![-+]\?\d\+\%([eE][+-]\?\d\+\)\?/ display
" A hex, binary, or octal number
syn match coffeeNumber /\<0[xX]\x\+\>/ display
syn match coffeeNumber /\<0[bB][01]\+\>/ display
syn match coffeeNumber /\<0[oO][0-7]\+\>/ display

" A floating-point number, including a leading plus or minus
syn match coffeeFloat /\i\@<![-+]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?/
\                     display

" An error for reserved keywords, taken from the RESERVED array:
" http://coffeescript.org/documentation/docs/lexer.html#section-67
syn match coffeeReservedError /\<\%(case\|default\|function\|var\|void\|with\|const\|let\|enum\|export\|import\|native\|__hasProp\|__extends\|__slice\|__bind\|__indexOf\|implements\|interface\|package\|private\|protected\|public\|static\|yield\)\>/
\                             display

" A normal object assignment
syn match coffeeObjAssign /@\?\I\i*\s*\ze::\@!/ contains=@coffeeIdentifier display

syn keyword coffeeTodo TODO FIXME XXX contained

syn match coffeeComment /#.*/ contains=@Spell,coffeeTodo

syn region coffeeBlockComment start=/####\@!/ end=/###/
\                             contains=@Spell,coffeeTodo

" A comment in a heregex
syn region coffeeHeregexComment start=/#/ end=/\ze\/\/\/\|$/ contained
\                               contains=@Spell,coffeeTodo

" Embedded JavaScript
syn region coffeeEmbed matchgroup=coffeeEmbedDelim
\                      start=/`/ skip=/\\\\\|\\`/ end=/`/ keepend
\                      contains=@coffeeJS

syn region coffeeInterp matchgroup=coffeeInterpDelim start=/#{/ end=/}/ contained
\                       contains=@coffeeAll

" A string escape sequence
syn match coffeeEscape /\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\./ contained display

" A regex -- must not follow a parenthesis, number, or identifier, and must not
" be followed by a number
syn region coffeeRegexp start=#\%(\%()\|\i\@<!\d\)\s*\|\i\)\@<!/=\@!\s\@!#
\                      end=#/[gimy]\{,4}\d\@!#
\                      oneline contains=@coffeeBasicString,coffeeRegexCharSet
syn region coffeeRegexCharSet start=/\[/ end=/]/ contained
\                             contains=@coffeeBasicString

" A heregex
syn region coffeeHeregex start=#///# end=#///[gimy]\{,4}#
\                        contains=@coffeeInterpString,coffeeHeregexComment,
\                                  coffeeHeregexCharSet
\                        fold
syn region coffeeHeregexCharSet start=/\[/ end=/]/ contained
\                               contains=@coffeeInterpString

" Heredoc strings
syn region coffeeHeredoc start=/"""/ end=/"""/ contains=@coffeeInterpString
\                        fold
syn region coffeeHeredoc start=/'''/ end=/'''/ contains=@coffeeBasicString
\                        fold

" An error for trailing whitespace, as long as the line isn't just whitespace
syn match coffeeSpaceError /\S\@<=\s\+$/ display

" An error for trailing semicolons, for help transitioning from JavaScript
syn match coffeeSemicolonError /;$/ display

" Ignore reserved words in dot accesses.
syn match coffeeDotAccess /\.\@<!\.\s*\I\i*/he=s+1 contains=@coffeeIdentifier

" Ignore reserved words in prototype accesses.
syn match coffeeProtoAccess /::\s*\I\i*/he=s+2 contains=@coffeeIdentifier

" This is required for interpolations to work.
syn region coffeeCurlies matchgroup=coffeeCurly start=/{/ end=/}/
\                        contains=@coffeeAll
syn region coffeeBrackets matchgroup=coffeeBracket start=/\[/ end=/\]/
\                         contains=@coffeeAll
syn region coffeeParens matchgroup=coffeeParen start=/(/ end=/)/
\                       contains=@coffeeAll

" This is used instead of TOP to keep things coffee-specific for good
" embedding. `contained` groups aren't included.
syn cluster coffeeAll contains=coffeeStatement,coffeeRepeat,coffeeConditional,
\                              coffeeException,coffeeKeyword,coffeeOperator,
\                              coffeeExtendedOp,coffeeSpecialOp,coffeeBoolean,
\                              coffeeGlobal,coffeeSpecialVar,coffeeSpecialIdent,
\                              coffeeObject,coffeeConstant,coffeeString,
\                              coffeeNumber,coffeeFloat,coffeeReservedError,
\                              coffeeObjAssign,coffeeComment,coffeeBlockComment,
\                              coffeeEmbed,coffeeRegexp,coffeeHeregex,
\                              coffeeHeredoc,coffeeSpaceError,
\                              coffeeSemicolonError,coffeeDotAccess,
\                              coffeeProtoAccess,coffeeCurlies,coffeeBrackets,
\                              coffeeParens

if !exists('b:current_syntax')
  let b:current_syntax = 'coffee'
endif

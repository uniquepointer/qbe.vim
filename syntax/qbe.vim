" Vim syntax file
" Language: Robopill Dependency Handler
" Maintainer: hyakuburns
" Latest Revision: ur mom

if exists("b:current_syntax")
  finish
endif

"Arithmetic and bits
syn keyword ssaIns add and div mul or rem sar shl shr sub udiv urem xor 
"Memory
syn keyword ssaIns alloc16 alloc4 alloc8 loadd loadl loads loadsb loadsh loadsw loadub loaduh loaduw loadw 
syn keyword ssaIns storeb stored storeh storel stores storew 
"Comparisons
syn keyword ssaIns ceqd ceql ceqs ceqw cged cges cgtd cgts cled cles cltd clts cned cnel cnes cnew cod cos 
syn keyword ssaIns csgel csgew csgtl csgtw cslel cslew csltl csltw cugel cugew cugtl cugtw culel culew cultl cultw cuod cuos 
"Conversions
syn keyword ssaIns dtosi exts extsb extsh extsw extub extuh extuw sltof stosi swtof truncd 
"Cast and copy
syn keyword ssaIns cast copy 
"Call
syn keyword ssaIns call 
"Variadic
syn keyword ssaIns vastart vaarg 
"phi
syn keyword ssaIns phi 
"Jumps
syn keyword ssaIns jmp jnz ret

syn region ssaString start=/\v"/ skip=/\v\\./ end=/\v"/
syn match ssaComment "#.*$" contains=sltyTodo
syn match ssaAggType ":\w*"
syn match ssaNum "\d\+"
syn match ssaLabel "@\w*"
syn match ssaFunc "\$\w*(.*)"
syn match ssaLocal "%\w*"
syn match ssaGlobal "\$\w*"
syn match ssaOp "[=]"
syn match ssaTypes "[\ =]\{1}[wlsdbh]\ \{1}"
syn keyword ssaLoosies type export
syn keyword ssaTODO contained TODO FIXME XXX NOTE

hi def link ssaIns Keyword
hi def link ssaString String
hi def link ssaComment Comment
hi def link ssaAggType Typedef
hi def link ssaNum Number
hi def link ssaLabel Label
hi def link ssaFunc Function
hi def link ssaLocal Identifier
hi def link ssaGlobal Macro
hi def link ssaOp Operator
hi def link ssaTypes Type
hi def link ssaLoosies Special
hi def link ssaTODO Todo

let b:current_syntax = "qbe"


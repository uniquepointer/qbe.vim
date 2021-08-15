" Vim syntax file
" Language: QBE - Quick Compiler Backend / SSA - Static Single Assignment
" Maintainer: uniquepointer
" Latest Revision: now

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

syn match ssaNum display "\<\d[0-9_]*\>" 
syn match ssaFsugar display "\<[ds]_\d*\>" 

syn region ssaString start=/\v"/ skip=/\v\\./ end=/\v"/
syn match ssaComment "#.*$" contains=sltyTodo
syn match ssaAggType ":\w*"
syn match ssaLabel "@[a-zA-Z0-9._]*[^\\\s]"
syn match ssaLocal "%[a-zA-Z0-9._]*[^()\s\,]"
syn match ssaGlobal "\$[a-zA-Z0-9._]*[^()\s\,]"
"syn match ssaFunc contains=cParen"
syn match ssaFunc "\$[a-zA-Z0-9.]*("he=e-1 
syn match ssaOp "[=\-\+]"
syn keyword ssaTODO contained TODO FIXME XXX NOTE
syn keyword ssaLoosies export function

hi def link ssaNum Number
hi def link ssaFsugar Number
hi def link ssaIns Keyword
hi def link ssaString String
hi def link ssaComment Comment
hi def link ssaAggType Typedef
hi def link ssaLabel Conditional
hi def link ssaLocal Identifier
hi def link ssaGlobal Constant
hi def link ssaOp Operator
hi def link ssaTypes Type
hi def link ssaLoosies Statement
hi def link ssaTODO Todo
hi def link ssaFunc Function

let b:current_syntax = "qbe"

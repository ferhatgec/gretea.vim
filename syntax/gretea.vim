" Gretea syntax support for VIM
"  * Name     : Gretea
"  * Extension: *.tea
"  * Author   : Ferhat Geçdoğan
"  * License  : MIT

if exists("b:current_syntax")
  finish
endif

syn keyword GreteaNotes contained TODO FIXME XXX NOTE

inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

syn keyword GreteaBoolean true false

syn match GreteaOperators '[+^\-\*/\'%#@&=<>|!`?{}]'

syn match GreteaComment '//.*$' contains=GreteaNotes,GreteaBoolean

syn match GreteaNumber '\d\+' contained display
syn match GreteaNumber '[-+]\d\+' contained display

syn keyword GreteaImport import include
syn keyword GreteaModule module
syn keyword GreteaLinker cpp runtime
syn keyword GreteaStatement if else for
syn keyword GreteaAlias alias set
syn keyword GreteaVar mut var
syn keyword GreteaType string int double bool float void int8 int16 int32 int64 uint8 uint16 uint32 uint64

syn keyword GreteaCppSTL array bitset cassert cctype cerrno cfloat ciso646 climits clocale cmath complex csetjmp csignal cstdarg cstddef cstdio cstdlib cstring ctime cwchar cwctype deque exception fstream functional iomanip ios iosfwd iostream istream iterator limits list locale map memory new numeric ostream queue random regex set sstream stack stdexcept streambuf string strstream tuple typeinfo type_traits unordered_map unordered_set utility valarray vector

syn region GreteaMacro start="\[\[" end ="\]\]"
syn match GreteaType '\w\@![A-Z]\w*'

syn match GreteaFn 'fn'
syn match GreteaFnCall '[a-z_]\w*(\@='
syn match GreteaFnArg '.*$\:'

syn region GreteaLiteral start='"' end='"'

hi def link GreteaNotes      Todo
hi def link GreteaBoolean    Boolean
hi def link GreteaOperators  Operator
hi def link GreteaComment    Comment
hi def link GreteaImport     Include
hi def link GreteaModule     Type
hi def link GreteaLinker     Keyword
hi def link GreteaStatement  Statement
hi def link GreteaAlias      Keyword
hi def link GreteaVar        Keyword
hi def link GreteaFn         Keyword
hi def link GreteaFnCall     Function
hi def link GreteaFnArg      Type
hi def link GreteaType       Type
hi def link GreteaCppSTL     String
hi def link GreteaMacro      Macro
hi def link GreteaLiteral    String
hi def link GreteaMacro      PreProc
hi def link GreteaNumber     Constant

let b:current_syntax = "gretea"

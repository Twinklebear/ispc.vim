" Vim syntax file
" Language: ISPC
" Maintainer: Will Usher <will@willusher.io>
" Last Change: March 22, 2015

if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal cindent
setlocal cinwords+=foreach_active,foreach_unique,foreach,foreach_tiled,cif,cfor,cwhile,cdo

setlocal autoindent
setlocal indentexpr=GetISPCIndent(v:lnum)

function GetISPCIndent(lnum)
	" ISPC indents like C, so just do that
	return cindent(a:lnum)
endfunction


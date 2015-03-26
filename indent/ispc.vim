" Vim syntax file
" Language: ISPC
" Maintainer: Will Usher <will@willusher.io>
" Last Change: March 22, 2015

if exists("b:did_indent")
	finish
endif

setlocal cindent
setlocal cinwords+=foreach_active,foreach_unique,foreach,foreach_tiled,cif,cfor,cwhile,cdo

setlocal autoindent
" ISPC indents like C, so just do that
setlocal indentexpr=cindent(v:lnum)

let b:did_indent = 1


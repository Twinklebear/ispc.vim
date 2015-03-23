" Vim syntax file
" Language: ISPC
" Maintainer: Will Usher <will@willusher.io>
" Last Change: March 22, 2015

if exists("b:current_syntax")
  finish
endif

" ISPC is C syntax with some addons, so start there
runtime! syntax/c.vim
unlet b:current_syntax

syn keyword	ispcStatement cbreak ccontinue creturn launch print reference soa sync new delete unmasked
syn keyword	ispcConditional cif
syn keyword	ispcRepeat cdo cfor cwhile foreach foreach_unique foreach_active foreach_tiled
syn keyword	ispcBuiltin programCount programIndex
syn keyword ispcStorageClass export uniform varying task
syn keyword	ispcType int8 int16 int32 int64
syn keyword	ispcOperator operator in
syn keyword ispcDefine ISPC ISPC_POINTER_SIZE ISPC_MAJOR_VERSION ISPC_MINOR_VERSION PI
			\ ISPC_TARGET_NEON_8 ISPC_TARGET_NEON_16 ISPC_TARGET_NEON_3
			\ ISPC_TARGET_SSE2 ISPC_TARGET_SSE4 ISPC_TARGET_AVX
			\ ISPC_TARGET_AVX11 ISPC_TARGET_AVX2 ISPC_TARGET_GENERIC

hi def link ispcStatement Statement
hi def link ispcConditional Conditional
hi def link ispcRepeat Repeat
hi def link ispcBuiltin Statement
hi def link ispcStorageClass StorageClass
hi def link ispcType Type
hi def link ispcOperator Operator
hi def link ispcDefine Define

let b:current_syntax = "ispc"


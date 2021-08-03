
if exists("b:current_syntax")
  finish
endif

syn match bvh_keys 	'\(HIERARCHY\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\)'
syn match bvh_warning 	'\c.*\<\(WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\).*'
syn region bvh_string 	start=/'/ end=/'/ end=/$/ skip=/\\./
syn region bvh_string 	start=/"/ end=/"/ skip=/\\./
syn match bvh_number 	'0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match   bvh_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syn match   bvh_date '\d\{4}-\d\d-\d\d'

syn match   bvh_time '\d\d:\d\d:\d\d\s*'
syn match   bvh_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

hi def link bvh_keys 		Type

hi def link bvh_string 		String
hi def link bvh_number 		Number
hi def link bvh_date 		Constant
hi def link bvh_warning 	WarningMsg


let b:current_syntax = "bvh"

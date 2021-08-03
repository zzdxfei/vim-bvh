if exists("b:current_syntax")
  finish
endif

syn match bvh_hm '\(HIERARCHY\|MOTION\|Frame Time\|Frames\)'
syn match bvh_joints 	'\c.*\<\(ROOT\|JOINT\).*'
syn match bvh_end_site 	'End Site'
syn match bvh_motion_info '\cCHANNELS \d \(Xposition\|Yposition\|Zposition\|Xrotation\|Yrotation\|Zrotation\).*' 	
syn match bvh_offset 	'\c.*\<OFFSET.*'

hi def link bvh_hm String
hi def link bvh_joints Type
hi def link bvh_end_site ErrorMsg
hi def link bvh_offset Number
hi def link bvh_motion_info Include

let b:current_syntax = "bvh"

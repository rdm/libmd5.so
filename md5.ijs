require 'dll'
md5raw=: ((1!:43''),'/libmd5.so MD5String > x *c i')&(15!:0)@(;#)
md5=: 3 :',tolower hfd a.i. memr (md5raw y),0 16 2'


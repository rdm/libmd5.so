require'convert'
NB. exit code from http://www.jsoftware.com/help/user/cd_domain_error.htm
match=:4 :0
  EXPECT=: x
  GOT=: y
  assert x-:y
)
3 :0''
  9!:7]9 1 1#'+|-'
  9!:27 'exit 63 [ echo ''Oops... this is bad.'''
  9!:29]1
  load (1!:43''),'/md5.ijs'
  try. 
    'd41d8cd98f00b204e9800998ecf8427e' match md5 ''
    '0cc175b9c0f1b6a831c399e269772661' match md5,'a'
    '900150983cd24fb0d6963f7d28e17f72' match md5 'abc'
    'f96b697d7cb7938d525a2f31aaf161d0' match md5 'message digest'
    'c3fcd3d76192e4007dfb496cca67e13b' match md5 'abcdefghijklmnopqrstuvwxyz'
    'd174ab98d277d9f5a5611c2c9f419d9f' match md5 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    '57edf4a22be3c955ac49da2e2107b67a' match md5 '12345678901234567890123456789012345678901234567890123456789012345678901234567890'
  catch.
    if. errnum=. {.cder '' do.
      echo 15!:11 ''
      exit errnum
    else.
      echo 'Expected ',EXPECT,' but got ',GOT
      exit 127
    end.
  end.
  exit 0
)

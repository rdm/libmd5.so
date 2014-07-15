CFLAGS=-fPIC -m64
libmd5.so: md5c.o
	cc -m64 md5c.o -shared -Wl,-soname,libmd5.so -o libmd5.so 

clean:
	rm *.o *.so

test: libmd5.so
	jc md5test.ijs

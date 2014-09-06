# use -m64 for 64 bit targets

CFLAGS=-fPIC -m32
libmd5.so: md5c.o
	cc -m32 md5c.o -shared -Wl,-soname,libmd5.so -o libmd5.so 

clean:
	rm *.o *.so

test: libmd5.so
	jconsole md5test.ijs

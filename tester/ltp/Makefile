all: ltp-full-20090630

clean:
	rm -rf ltp-full-20090630*

ltp-full-20090630: ltp-full-20090630.tgz
	tar xzmf $<

ltp-full-20090630.tgz:
	wget http://downloads.sourceforge.net/ltp/ltp-full-20090630.tgz

archive := ltp-full-20090630.tgz
dir := ltp-full-20090630

all: $(dir)
	make -C $(dir)

clean:
	if [ -d $(dir) ]; then make -C $(dir) clean; fi

distclean: clean
	rm -rf $(archive)

$(dir): $(archive)
	tar xzmf $<

$(archive):
	wget http://downloads.sourceforge.net/ltp/ltp-full-20090630.tgz

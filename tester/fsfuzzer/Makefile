archive := fsfuzzer-0.7.tar.gz
dir := fsfuzzer-0.7

all: $(dir)
	if [-! -f $(dir)/Makefile ]; then cd $(dir) && ./configure; fi
	make -C $(dir)

clean:
	if [ -d $(dir) ]; then make -C $(dir) clean; fi

distclean: clean
	rm -rf $(dir)
	rm -rf $(archive)

$(dir): $(archive)
	tar xzmf $<

$(archive):
	wget http://people.redhat.com/sgrubb/files/fsfuzzer-0.7.tar.gz

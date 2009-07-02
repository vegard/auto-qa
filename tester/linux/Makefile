dir := linux-2.6

all: $(dir)
	#make -C $(dir)

clean:
	if [ -d $(dir) ]; then make -C $(dir) clean; fi

distclean: clean
	rm -rf $(dir)

$(dir):
	git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git $(dir)

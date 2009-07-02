dir := kerneloops

all: $(dir)
	make -C $(dir) all

clean:
	if [ -d $(dir) ]; then make -C $(dir) clean; fi

distclean: clean
	rm -rf $(dir)

$(dir):
	git clone git://git.infradead.org/kerneloops.git $(dir)

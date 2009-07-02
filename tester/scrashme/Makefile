dir := scrashme

all: $(dir)
	make -C $(dir)

clean:
	if [ -d $(dir) ]; then make -C $(dir) clean; fi

distclean: clean
	rm -rf $(dir)

$(dir):
	git clone http://www.codemonkey.org.uk/projects/scrashme/scrashme.git $(dir)

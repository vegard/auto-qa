all:
	make -C logger all
	make -C tester all

clean:
	make -C logger clean
	make -C tester clean

distclean:
	make -C logger distclean
	make -C tester distclean

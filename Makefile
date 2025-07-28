all: sync

sync:
	# [ -d ~/.bin ] || ln -s $(PWD)/bin/memo ~/.bin/memo

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -fr ~/.bin

.PHONY: all clean sync build run kill

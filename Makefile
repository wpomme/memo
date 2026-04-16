all: sync

sync:
	[ -f ~/.bin/memo-cat ] || ln -s $(PWD)/bin/memo-cat ~/.bin/memo-cat
	[ -f ~/.bin/memo-grep ] || ln -s $(PWD)/bin/memo-grep ~/.bin/memo-grep
	[ -f ~/.bin/memo-list ] || ln -s $(PWD)/bin/memo-list ~/.bin/memo-list

clean:
	rm -f ~/.bin/memo-cat
	rm -f ~/.bin/memo-grep
	rm -f ~/.bin/memo-list

.PHONY: all clean sync

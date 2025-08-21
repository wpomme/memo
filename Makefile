all: sync

sync:
	# [[ -d ~/.bin/docs ]] || ln -s $(PWD)/docs ~/.bin/docs
	# [[ -f ~/.bin/memo ]] || ln -s $(PWD)/memo ~/.bin/memo
	# [[ -f ~/.bin/memo-grep ]] || ln -s $(PWD)/memo-grep ~/.bin/memo-grep
	# [[ -f ~/.bin/memo-test ]] || ln -s $(PWD)/memo-test ~/.bin/memo-test

clean:
	rm ~/.bin/docs
	rm ~/.bin/memo
	rm ~/.bin/memo-grep
	rm ~/.bin/memo-test

.PHONY: all clean sync

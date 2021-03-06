install:
	ln -fs ~/.vim/vimrc ~/.vimrc
	ln -fs ~/.vim/gvimrc ~/.gvimrc
	git submodule init
	git submodule update

update:
	git pull origin master
	git submodule init
	git submodule update

bundle:
	mkdir bundle

update-bundle: bundle
	./update-bundle.sh

.PHONY: install update update-bundle

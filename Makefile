.PHONY: deb

VERSION=2.6.2

DEB_PHP_PATH=/usr/share/php

deb:
	mkdir -p tmp/deb/$(DEB_PHP_PATH)
	cp -a Slim tmp/deb/$(DEB_PHP_PATH)
	mkdir -p tmp/deb/DEBIAN
	VERSION=$(VERSION) bash slim.deb-control > tmp/deb/DEBIAN/control
	fakeroot dpkg -b tmp/deb/ .
	rm -rf tmp

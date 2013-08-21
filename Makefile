.PHONY: default mocha expect

default: mocha expect

mocha:
	cp ../mocha/mocha.css css/
	cp ../mocha/mocha.js js/
	node_modules/.bin/lessc --yui-compress css/mocha.css > css/mocha.min.css
	node_modules/.bin/uglifyjs js/mocha.js -c -m -o js/mocha.min.js

expect:
	cp ../expect.js/expect.js js/
	node_modules/.bin/uglifyjs js/expect.js -c -m -o js/expect.min.js

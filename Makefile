.PHONY: default bootstrap bootstrap-ie6 mocha expect

default: bootstrap bootstrap-ie6 mocha expect

bootstrap:
	unzip ../bootstrap/docs/assets/bootstrap.zip
	mv bootstrap/css/* css/
	mv bootstrap/img/* img/
	mv bootstrap/js/* js/
	rm -r bootstrap

bootstrap-ie6:
	lessc --compress css/bootstrap-ie6.css > css/bootstrap-ie6.min.css

mocha:
	cp ../mocha/mocha.css css/
	cp ../mocha/mocha.js js/
	lessc --compress css/mocha.css > css/mocha.min.css
	uglifyjs -nc js/mocha.js > js/mocha.min.js

expect:
	cp ../expect.js/expect.js js/
	uglifyjs -nc js/expect.js > js/expect.min.js

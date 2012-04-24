.PHONY: default bootstrap bootstrap-ie6 mocha expect

default: bootstrap bootstrap-ie6 mocha expect

bootstrap:
	cp ../bootstrap/docs/assets/css/bootstrap.css css/
	cp ../bootstrap/docs/assets/css/bootstrap-responsive.css css/
	lessc --compress css/bootstrap.css > css/bootstrap.min.css
	lessc --compress css/bootstrap-responsive.css > css/bootstrap-responsive.min.css
	cp ../bootstrap/docs/assets/js/bootstrap.js js/
	cp ../bootstrap/docs/assets/js/bootstrap.min.js js/
	cp ../bootstrap/docs/assets/img/glyphicons-halflings.png img/
	cp ../bootstrap/docs/assets/img/glyphicons-halflings-white.png img/

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

.PHONY: default bootstrap ie6

default: bootstrap ie6

bootstrap:
	unzip ../bootstrap/docs/assets/bootstrap.zip
	mv bootstrap/css/* css/
	mv bootstrap/img/* img/
	mv bootstrap/js/* js/
	rm -r bootstrap

ie6:
	lessc --compress css/bootstrap-ie6.css > css/bootstrap-ie6.min.css

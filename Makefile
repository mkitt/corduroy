test.css:
	@sass --style expanded --line-comments ./test/test.sass ./test/test.css

test.js:
	@coffee -o ./test/ -c ./
	@mv -f ./test/corduroy.js ./test/test.js

test: test.css test.js

.PHONY: test.css test.js test


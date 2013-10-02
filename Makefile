test: test.css

test.css:
	@sass --style expanded --line-comments ./test/test.sass ./test/test.css
	@cat ./test/test.css

.PHONY: test test.css


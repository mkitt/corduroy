test: test.css

test.css:
	@sass --style expanded ./test/test.sass ./test/test.css

.PHONY: test test.css


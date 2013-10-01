test:
	@sass --style expanded --line-comments ./test/style.sass ./test/style.css
	cat ./test/style.css

javascript:
	@coffee -o ./test/ -c ./

.PHONY: test javascript


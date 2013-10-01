window.c ?= {}

c.matches = document.body.matches or document.body.webkitMatchesSelector or document.body.mozMatchesSelector or document.body.msMatchesSelector


c.parentSelector = (element, selector) ->
  while element
    if c.matches.bind(element)(selector)
      return element
    else
      element = element.parentNode
  false


c.remove = (node) ->
  node.parentNode.removeChild node


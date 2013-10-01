window.corduroy = (->
  corduroy = ->

  corduroy.matches = (->
    document.body.matches or document.body.webkitMatchesSelector or document.body.mozMatchesSelector or document.body.msMatchesSelector
  )()


  corduroy.on = (node, type, fn) ->
    node.addEventListener type, fn, false
    node


  corduroy.off = (node, type, fn) ->
    node.removeEventListener type, fn, false
    node


  corduroy.trigger = (node, type, data={}) ->
    e = document.createEvent 'HTMLEvents'
    e.initEvent type, true, true
    e.eventName = type
    e.target = node
    e.data = data
    node.dispatchEvent e
    node


  corduroy.tapon = (node, fn) ->
    node.addEventListener 'click', corduroy.prevented, false
    Hammer?(node, {stop_browser_behavior: false}).on 'tap doubletap', fn
    node


  corduroy.tapoff = (node, fn) ->
    node.removeEventListener 'click', corduroy.prevented, false
    Hammer?(node).off 'tap doubletap', fn
    node


  corduroy.prevented = (e) ->
    e.preventDefault()


  corduroy.parentSelector = (element, selector) ->
    while element
      if corduroy.matches.bind(element)(selector)
        return element
      else
        element = element.parentNode
    false


  corduroy.remove = (node) ->
    node.parentNode.removeChild node


  window.$ = corduroy unless window.$
  corduroy
)()


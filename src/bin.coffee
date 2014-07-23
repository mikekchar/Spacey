# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Bin
  constructor: ->
    @facts = []
    
  push: (fact) ->
    @facts.push(fact)
    fact

  pop: ->
    @facts.pop()

  index: (i) ->
    @facts[i] || null

  length: ->
    @facts.length

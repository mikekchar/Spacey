unless root? then root = exports ? this

class root.Bin
  constructor: ->
    @facts = []
    
  push: (fact) ->
    @facts.push(fact)
    fact

  index: (i) ->
    @facts[i] || null

  length: ->
    @facts.length

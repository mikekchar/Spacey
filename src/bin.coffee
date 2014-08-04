unless root? then root = module.exports ? this

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

{Bin} = require('./bin.coffee') if require? 
{Fact} = require('./fact.coffee') if require? 

# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Quiz
  constructor: ->
    @new_bin = new Bin
    @working_bin = new Bin

  push: (fact) ->
    @new_bin.push(fact)

  next: ->
    a = @new_bin.pop()
    @working_bin.push(a)

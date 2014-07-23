{Bin} = require('./bin.coffee') if require? 
{Fact} = require('./fact.coffee') if require? 

# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Quiz
  constructor: ->
    @new_bin = new Bin
    @working_bin = new Bin

  new_size: ->
    @new_bin.length()

  working_size: ->
    @working_bin.length()

  push: (fact) ->
    @new_bin.push(fact)

  select: ->
    @new_bin.index(0)

  next: ->
    a = @new_bin.pop()
    @working_bin.push(a)

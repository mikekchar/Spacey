{Bin} = if require? then require('./bin.coffee') else this
{Fact} = if require? then require ('./fact.coffee') else this

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

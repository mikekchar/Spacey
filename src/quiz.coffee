unless root? then root = module.exports ? this
Bin = if require? then require('./bin.coffee').Bin else this

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

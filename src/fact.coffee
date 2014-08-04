unless root? then root = module.exports ? this

class root.Fact
  constructor: ->
    @trials = []

  push: (trial) ->
    @trials.push trial

  length: ->
    @trials.length

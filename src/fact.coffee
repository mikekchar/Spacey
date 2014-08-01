unless root? then root = exports ? this

class root.Fact
  constructor: ->
    @trials = []

  push: (trial) ->
    @trials.push trial

  length: ->
    @trials.length

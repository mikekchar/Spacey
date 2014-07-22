# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Fact
  constructor: ->
    @trials = []

  push: (trial) ->
    @trials.push trial

  length: ->
    @trials.length

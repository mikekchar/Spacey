# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Quiz
    constructor: ->
        @new_bin = []
        @working_bin = []

    add: (fact) ->
        @new_bin.push fact

    next: ->
        a = @new_bin.pop()
        @working_bin.push(a)

class root.Bin
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

    length: ->
        @facts.length


class root.Fact
    constructor: ->
        @trials = []

    add: (trial) ->
        @trials.push trial


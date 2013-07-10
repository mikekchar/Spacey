# If exports exist (i.e. nodeJS) use it, otherwise window (browser)
root = exports ? this

class root.Fact
    constructor: ->
        @trials = []

    push: (trial) ->
        @trials.push trial

class root.Bin
    constructor: ->
        @facts = []
    
    push: (fact) ->
        @facts.push(fact)

    pop: ->
        @facts.pop()

    index: (i) ->
        @facts[i]

    length: ->
        @facts.length

class root.Quiz
    constructor: ->
        @new_bin = new root.Bin
        @working_bin = new root.Bin

    push: (fact) ->
        @new_bin.push(fact)

    next: ->
        a = @new_bin.pop()
        @working_bin.push(a)


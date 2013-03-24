exports.Quiz = class Quiz
    constructor: ->
        @new_bin = []
        @working_bin = []

    add: (fact) ->
        @new_bin.push fact

    next: ->
        a = @new_bin.pop()
        @working_bin.push(a)

exports.Bin = class Bin
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

    length: ->
        @facts.length


exports.Fact = class Fact
    constructor: ->
        @trials = []

    add: (trial) ->
        @trials.push trial


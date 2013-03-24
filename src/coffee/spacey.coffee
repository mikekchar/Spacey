exports.Spacey = class Spacey
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

exports.Fact = class Fact
    constructor: ->
        @trials = []

    add: (trial) ->
        @trials.push trial


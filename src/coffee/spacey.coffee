class Spacey
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

class Fact
    constructor: ->
        @trials = []

    add: (trial) ->
        @trials.push trial

exports.Spacey = Spacey
exports.Fact = Fact

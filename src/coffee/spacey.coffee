exports.Spacey =
class Spacey
    constructor: ->
        @facts = []
    
    deck: ->
        @facts

    add: (fact) ->
        @facts.push fact

exports.Fact =
class Fact


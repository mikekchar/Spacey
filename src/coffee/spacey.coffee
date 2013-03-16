class Spacey
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

class Fact
    constructor: ->
        @facets = []

    add: (facet) ->
        @facets.push facet

exports.Spacey = Spacey
exports.Fact = Fact

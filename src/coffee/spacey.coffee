exports.Spacey =
class Spacey
    constructor: ->
        @facts = []
    
    add: (fact) ->
        @facts.push fact

exports.Fact =
class Fact
    constructor: ->
        @facets = []

    add: (facet) ->
        @facets.push facet

exports.Spacey =
class Spacey
    constructor: ->
        @deck = []
    
    deck: ->
        @deck

    add: (card) ->
        @deck += card

exports.Card =
class Card


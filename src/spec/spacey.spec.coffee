Spacey = require '../coffee/spacey.coffee'

describe "Spacey", ->

    it 'has a deck', ->
        s = new Spacey.Spacey
        expect(s).toBeDefined
        expect(s.deck).toBeDefined
        expect(s.deck.length).toEqual 0

    it 'can create a card', ->
        c = new Spacey.Card
        expect(c.toBeDefined)

    it 'can add a card to the deck', ->
        s = new Spacey.Spacey
        c = new Spacey.Card
        expect(s.deck.length).toEqual 0
        s.add("hello")
        expect(s.deck.length).toEqual 1



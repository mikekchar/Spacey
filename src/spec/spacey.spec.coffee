Spacey = require '../coffee/spacey.coffee'

describe "Spacey", ->

    it 'has facts', ->
        s = new Spacey.Spacey
        expect(s).toBeDefined
        expect(s.facts).toBeDefined
        expect(s.facts.length).toEqual 0

    it 'can create a fact', ->
        f = new Spacey.Fact
        expect(f.toBeDefined)

    it 'can add a fact to the facts', ->
        s = new Spacey.Spacey
        f = new Spacey.Fact
        expect(s.facts.length).toEqual 0
        s.add(f)
        expect(s.facts.length).toEqual 1

describe "Fact", ->
    
    it 'has trials', ->
        f = new Spacey.Fact
        expect(f.trials.length).toEqual 0

    it 'can add trials', ->
        f = new Spacey.Fact
        expect(f.trials.length).toEqual 0
        f.add("Hello")
        expect(f.trials.length).toEqual 1


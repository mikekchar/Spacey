Spacey = require '../coffee/spacey.coffee'
Fakes = require '../coffee/fakes.coffee'

describe "Spacey", ->

    it 'can add a fact to the facts', ->
        s = new Spacey.Spacey
        f = new Spacey.Fact
        expect(s.facts.length).toEqual 0
        s.add(f)
        expect(s.facts.length).toEqual 1

describe "Fact", ->
    
    it 'can add trials', ->
        f = new Spacey.Fact
        t = new Fakes.Trial
        expect(f.trials.length).toEqual 0
        f.add(t)
        expect(f.trials.length).toEqual 1


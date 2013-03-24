Spacey = require '../src/spacey.coffee'
Fakes = require '../spec_helper/fakes.coffee'

describe "Facts", ->

    it 'can add a fact to the facts', ->
        s = new Spacey.Facts
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


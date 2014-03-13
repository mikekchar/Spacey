{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'
Fake = require '../spec_helper/fakes.coffee'

describe "Bin", ->

    it 'can add a fact to the facts', ->
        b = new Bin
        f = new Fact
        expect(b.facts.length).toEqual 0
        b.push(f)
        expect(b.facts.length).toEqual 1

describe "Fact", ->
    
    it 'can add trials', ->
        f = new Fact
        t = new Fake.Trial
        expect(f.trials.length).toEqual 0
        f.push(t)
        expect(f.trials.length).toEqual 1


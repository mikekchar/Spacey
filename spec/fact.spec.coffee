{Fact} = require '../src/fact.coffee'
Fake = require '../spec_helper/fakes.coffee'

describe "Fact", ->
    
    it 'can add trials', ->
        f = new Fact
        t = new Fake.Trial
        expect(f.trials.length).toEqual 0
        f.push(t)
        expect(f.trials.length).toEqual 1


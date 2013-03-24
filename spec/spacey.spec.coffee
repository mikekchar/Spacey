Spacey = require '../src/spacey.coffee'
Fakes = require '../spec_helper/fakes.coffee'

describe "Quiz", ->

    it 'adds new items to the new bin', ->
        q = new Spacey.Quiz
        expect(q.new_bin.length).toEqual 0
        f = new Spacey.Fact
        q.add(f)
        expect(q.new_bin.length).toEqual 1

    it 'moves items to the working bin', ->
        q = new Spacey.Quiz
        f = new Spacey.Fact
        q.add(f)
        expect(q.new_bin.length).toEqual 1
        expect(q.working_bin.length).toEqual 0
        q.next()
        expect(q.new_bin.length).toEqual 0
        expect(q.working_bin.length).toEqual 1
        expect(q.working_bin[0]).toBe f

describe "Bin", ->

    it 'can add a fact to the facts', ->
        b = new Spacey.Bin
        f = new Spacey.Fact
        expect(b.facts.length).toEqual 0
        b.add(f)
        expect(b.facts.length).toEqual 1

describe "Fact", ->
    
    it 'can add trials', ->
        f = new Spacey.Fact
        t = new Fakes.Trial
        expect(f.trials.length).toEqual 0
        f.add(t)
        expect(f.trials.length).toEqual 1


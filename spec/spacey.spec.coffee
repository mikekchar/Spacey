{Quiz, Bin, Fact} = require '../src/spacey.coffee'
Fake = require '../spec_helper/fakes.coffee'

describe "Quiz", ->

    it 'adds new items to the new bin', ->
        q = new Quiz
        expect(q.new_bin.length()).toEqual 0
        f = new Fact
        q.push(f)
        expect(q.new_bin.length()).toEqual 1

    it 'moves items to the working bin', ->
        q = new Quiz
        f = new Fact
        q.push(f)
        expect(q.new_bin.length()).toEqual 1
        expect(q.working_bin.length()).toEqual 0
        q.next()
        expect(q.new_bin.length()).toEqual 0
        expect(q.working_bin.length()).toEqual 1
        expect(q.working_bin.index(0)).toBe f

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


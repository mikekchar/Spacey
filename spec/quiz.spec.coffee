{Bin, Fact} = require '../src/spacey.coffee'
{Quiz} = require '../src/quiz.coffee'

describe "Quiz", ->

    it 'adds new facts to the new bin', ->
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


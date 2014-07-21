Scenario = require '../spec_helper/scenario.coffee'
{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'
{Quiz} = require '../src/quiz.coffee'

describe "Quiz", ->

  it 'adds new facts to the new bin', ->
    q = new Quiz
    expect(q.new_bin.length()).toEqual 0
    f = new Fact
    q.push(f)
    expect(q.new_bin.length()).toEqual 1


  describe "working bin", ->
    beforeEach ->
      s = new Scenario.Scenario
      s.has_quiz().with_fact()
      @q = s.quiz

    it 'moves items to the working bin', ->
      expect(@q.new_bin.length()).toEqual 1
      expect(@q.working_bin.length()).toEqual 0
      @q.next()
      expect(@q.new_bin.length()).toEqual 0
      expect(@q.working_bin.length()).toEqual 1
      expect(@q.working_bin.index(0)).toBe @q.added.index(0)

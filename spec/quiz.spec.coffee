Scenario = require '../spec_helper/scenario.coffee'
{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'
{Quiz} = require '../src/quiz.coffee'

describe "Quiz", ->

  beforeEach ->
    @q = new Quiz
    @f = new Fact

  it 'starts with empty bins', ->
    expect(@q.new_size()).toEqual 0
    expect(@q.working_size()).toEqual 0

  it 'adds new facts to the new bin', ->
    @q.push(@f)
    expect(@q.new_size()).toEqual 1

  describe "working bin", ->
    beforeEach ->
      s = new Scenario.Scenario
      s.has_quiz().with_fact()
      @q = s.quiz

    it 'moves items to the working bin on next()', ->
      @q.next()
      expect(@q.new_size()).toEqual 0
      expect(@q.working_size()).toEqual 1
      expect(@q.working_bin.index(0)).toBe @q.added.index(0)

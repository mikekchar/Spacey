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
    expect(@q.new_bin.index(0)).toEqual @f

  describe "select()", ->
    describe "when quiz is empty", ->
      it "returns null", ->
        expect(@q.select()).toBeNull()

    describe "when there are only facts in the new bin", ->
      beforeEach ->
        @q.push(@f)

      it "returns the first new item", ->
        expect(@q.select()).toEqual @q.new_bin.index(0)

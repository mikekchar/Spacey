{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'

describe "Bin", ->
  beforeEach ->
    @b = new Bin
    @f = new Fact

  describe "push()", ->
    it 'can add a fact to the facts', ->
      expect(@b.facts.length).toEqual 0
      @b.push(@f)
      expect(@b.facts.length).toEqual 1

    it 'returns the fact just pushed', ->
      expect(@b.push(@f)).toEqual @f

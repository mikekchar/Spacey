{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'

describe "Bin", ->
  beforeEach ->
    @b = new Bin
    @f = new Fact

  it 'is empty when it starts', ->
    expect(@b.length()).toEqual 0

  describe "when empty,", ->
    describe "index()", ->
      it 'returns null', ->
        expect(@b.index(0)).toBeNull()

  describe "push()", ->
    it 'can add a fact to the facts', ->
      @b.push(@f)
      expect(@b.length()).toEqual 1

    it 'returns the fact just pushed', ->
      expect(@b.push(@f)).toEqual @f

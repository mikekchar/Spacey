{Fact} = require '../src/fact.coffee'
Fake = require '../spec_helper/fakes.coffee'

describe "Fact", ->
  beforeEach ->
    @f = new Fact
    @t = new Fake.Trial
   
  it 'has no trials at the start', ->
    expect(@f.length()).toEqual 0

  describe 'push()', ->
    it 'can add trials', ->
      @f.push(@t)
      expect(@f.length()).toEqual 1

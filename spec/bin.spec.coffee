{Bin} = require '../src/bin.coffee'
{Fact} = require '../src/fact.coffee'

describe "Bin", ->

  it 'can add a fact to the facts', ->
    b = new Bin
    f = new Fact
    expect(b.facts.length).toEqual 0
    b.push(f)
    expect(b.facts.length).toEqual 1

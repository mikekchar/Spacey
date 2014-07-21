{Quiz} = require '../src/quiz.coffee'
{Fact} = require '../src/fact.coffee'
{Bin} = require '../src/bin.coffee'
 
class exports.Scenario
  has_quiz: ->
    @quiz = new ScenarioQuiz

class ScenarioQuiz extends Quiz
  constructor: ->
    super()
    @added = new Bin

  with_fact: ->
    f = new Fact
    @added.push(f)
    @push(f)
    return f

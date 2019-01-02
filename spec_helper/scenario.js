let root = module.exports ? module.exports : this;

let {Bin} = require("../src/bin.js");
let {Fact} = require("../src/fact.js");
let {Quiz} = require("../src/quiz.js");

class Scenario {
  has_quiz() {
    this.quiz = new ScenarioQuiz;
  }
}

class ScenarioQuiz extends Quiz {
  constructor() {
    super();
    this.added = new Bin;
  }

  with_fact() {
    const f = new Fact;
    this.added.push(f);
    this.push(f);
    return f;
  }
}

root.Scenario = Scenario;

let root = module.exports ? module.exports : this;

class Fact {
  constructor() {
    this.trials = [];
  }

  push(trial) {
    return this.trials.push(trial);
  }

  get length() {
    return this.trials.length;
  }
}

root.Fact = Fact;

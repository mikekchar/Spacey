let root = module.exports ? module.exports : this;
let Bin = require ? require("./bin.js").Bin : this.Bin;

class Quiz {
  constructor() {
    this.new_bin = new Bin();
    this.working_bin = new Bin();
  }

  get new_size() {
    return this.new_bin.length;
  }

  get working_size() {
    return this.working_bin.length;
  }

  push(fact) {
    return this.new_bin.push(fact);
  }

  select() {
    return this.new_bin.index(0);
  }
}

root.Quiz = Quiz;

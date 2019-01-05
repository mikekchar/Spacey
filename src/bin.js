let root = module.exports ? module.exports : this;

class Bin {
  constructor() {
    this.facts = [];
  }

  push(fact) {
    this.facts.push(fact);
    return fact;
  }

  index(i) {
    return (this.facts[i] || null);
  }

  get length() {
    return this.facts.length;
  }
}

root.Bin = Bin;

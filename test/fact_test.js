let {expect} = require("chai");

let Fake = require("../spec_helper/fakes.js");
let {Fact} = require("../src/fact.js");

describe("Fact", () => {
  beforeEach(() => {
    this.f = new Fact();
    this.t = new Fake.Trial();
  });

  it("has no trials at the start", () => {
    expect(this.f.length).to.equal(0);
  });

  describe("push()", () => {
    it("can add trials", () => {
      this.f.push(this.t);
      expect(this.f.length).to.equal(1);
    });
  });
});

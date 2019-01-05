let {expect} = require("chai");

Scenario = require("../spec_helper/scenario.js");
let {Bin} = require("../src/bin.js");
let {Fact} = require("../src/fact.js");
let {Quiz} = require("../src/quiz.js");

describe("Quiz", () => {
  beforeEach(() => {
    this.q = new Quiz;
    this.f = new Fact;
  });

  it("starts with empty bins", () => {
    expect(this.q.new_size).to.equal(0);
    expect(this.q.working_size).to.equal(0);
  });

  it("adds new facts to the new bin", () => {
    this.q.push(this.f);
    expect(this.q.new_size).to.equal(1);
    expect(this.q.new_bin.index(0)).to.equal(this.f);
  });

  describe("select()", () => {
    describe("when quiz is empty", () => {
      it("returns null", () => {
        expect(this.q.select()).to.be.null;
      });
    });

    describe("when there are only facts in the new bin", () => {
      beforeEach(() => {
        this.q.push(this.f);
      });

      it("returns the first new item", () => {
        expect(this.q.select()).to.equal(this.q.new_bin.index(0));
      });
    });
  });
});

let {expect} = require("chai");

let {Bin} = require("../src/bin.js");
let {Fact} = require("../src/fact.js");

describe("Bin", () => {
  beforeEach(() => {
    this.b = new Bin();
    this.f = new Fact();
  });

  it("is empty when it starts", () => {
    expect(this.b.length).to.equal(0);
  });

  describe("when empty,", () => {
    describe("index()", () => {
      it("returns null", () => {
        expect(this.b.index(0)).to.be.null;
      });
    });
  });

  describe("with facts,", () => {
    describe("index()", () => {
      beforeEach(() => {
        this.b.push(this.f);
      });

      it("returns the requested fact", () => {
        expect(this.b.index(0)).to.equal(this.f);
      });

      it("returns null when requesting non-existant fact", () => {
        expect(this.b.index(this.b.length)).to.be.null;
      });
    });
  });

  describe("push()", () => {
    it("can add a fact to the facts", () => {
      this.b.push(this.f);
      expect(this.b.length).to.equal(1);
    });

    it("returns the fact just pushed", () => {
      expect(this.b.push(this.f)).to.equal(this.f);
    });
  });
});

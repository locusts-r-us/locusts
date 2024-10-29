import { describe, it } from "jsr:@std/testing/bdd";
import { expect } from "jsr:@std/expect";

import { introduceLocusts } from "./mod.ts";

describe("Locusts", () => {
  it("should be introduced", () => {
    const result = introduceLocusts()
    expect(result).toBe(undefined);
  });
});

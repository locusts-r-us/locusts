import library from "@repo/eslint-config/eslint.library.config.js";
import vue from "eslint-plugin-vue";

/** @type {import("eslint").Linter.Config[]} */
export default [
  ...library,
  ...vue.configs["flat/recommended"],
  {
    ignores: ["dist/"],
  },
];

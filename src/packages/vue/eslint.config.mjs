import library from "@repo/eslint-config/eslint.library.config.js";
import pluginVue from "eslint-plugin-vue";

/** @type {import("eslint").Linter.Config[]} */
export default [
  ...library,
  ...pluginVue.configs["flat/recommended"],
  {
    ignores: ["dist/"],
  },
];

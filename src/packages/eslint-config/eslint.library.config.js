// @ts-check

import globals from "globals";
import eslint from "@eslint/js";
import ts from "typescript-eslint";
import prettier from "eslint-config-prettier";
import turboPlugin from "eslint-plugin-turbo";

import { resolve } from "node:path";

const project = resolve(process.cwd(), "tsconfig.json");

export default ts.config(
  eslint.configs.recommended,
  ...ts.configs.recommended,
  prettier,
  {
    name: "eslint-config-turbo (recreated flat)",
    plugins: {
      turbo: { rules: turboPlugin.rules },
    },
    rules: {
      "turbo/no-undeclared-env-vars": "error",
    },
  },
  {
    name: "library",
    languageOptions: {
      // parserOptions: {
      //   project: resolve(process.cwd(), "tsconfig.json")
      // },
      globals: {
        ...globals.browser,
        ...globals.node,
      },
    },
    ignores: ["build/", ".svelte-kit/", "dist/"],
  },
);

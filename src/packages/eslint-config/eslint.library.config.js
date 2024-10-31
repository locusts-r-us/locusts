// @ts-check

import globals from "globals";
import eslint from "@eslint/js";
import ts from "typescript-eslint";
import prettier from "eslint-config-prettier";
import turboPlugin from "eslint-plugin-turbo";

export default ts.config(
  eslint.configs.recommended,
  ...ts.configs.recommended,
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
      globals: {
        ...globals.browser,
        ...globals.node,
        React: true,
        JSX: true,
        Svelte: true
      },
    },
    ignores: ["**/build/", "**/.svelte-kit/", "**/dist/"],
  },
  prettier,
);

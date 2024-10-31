import svelte from 'eslint-plugin-svelte';
import ts from 'typescript-eslint';
import library from '@repo/eslint-config/eslint.library.config.js';

const svelteConfig = ts.config(
	...svelte.configs['flat/recommended'],
	...svelte.configs['flat/prettier'],
	{
		files: ['**/*.svelte'],

		languageOptions: {
			parserOptions: {
				parser: ts.parser
			}
		}
	},
	{
		ignores: ['build/', '.svelte-kit/', 'dist/']
	}
);

/** @type {import("eslint").Linter.Config[]} */
export default [...library, ...svelteConfig];

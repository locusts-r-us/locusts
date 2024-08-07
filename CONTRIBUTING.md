# Contributing

First off, thanks for taking the time to contribute! 🎉
We welcome all sorts of contributions, from bug reports to feature requests to code contributions.

## How to contribute

The main ways to can contribute are:

- [Requesting a new language](#requesting-a-new-language)
- [Adding a new language](#adding-a-new-language)

### Requesting a new language

If you'd like to request a new language to be added to the repository, please open an issue with the `new language` label.
Please include the following information:

- The name of the language
- A brief description of the language
- The language's website, if any exist
- Any relevant documentation on how to build, test, and publish libraries in the language
- Any CI information
- Any other relevant information

### Adding a new language

If you'd like to add a new language to the repository, please follow these guidelines:

- The language **MUST** have some way of publishing and consuming libraries (ie. a package manager).
- Your PR **SHOULD** (but doesn't have to) include a GitHub Actions pipeline to build, run tests, and potentially publish the library to the library location.
  - See any of the existing language workflows for examples.
- Your PR **MUST** include a `LANGUAGE`.md file in the `docs` directory with the following information:
  - A basic way to add the library as a dependency
  - An example of how to use the library
  - A link on the README.md to the new language documentation

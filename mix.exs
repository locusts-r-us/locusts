defmodule Locusts.MixProject do
  use Mix.Project

  def project do
    [
      app: :locusts,
      version: "0.0.0",
      elixir: "~> 1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "Locusts",
      description: "A BEAM library that introduces locusts into your codebase.",
      source_url: "https://github.com/locusts-r-us/locusts",
      test_paths: ["tests"],
      elixirc_paths: ["src"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.1", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ["src/locusts.ex", "mix.exs", "docs/BEAM.md"],
      maintainers: ["Matt Strapp"],
      licenses: ["0BSD"],
      links: %{"GitHub" => "https://github.com/locusts-r-us/locusts"}
    ]
  end
end

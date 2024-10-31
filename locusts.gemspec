# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "locusts"
  spec.version = "0.0.0"
  spec.authors = ["Matt Strapp"]
  spec.email = ["matt@mattstrapp.net"]

  spec.summary = "A Ruby library that introduces locusts to your codebase."
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/locusts-r-us/locusts"
  spec.required_ruby_version = ">= 1.6.7"
  spec.license = "0BSD"
  spec.extra_rdoc_files = ["docs/Ruby.md"]

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata = {
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    # "changelog_uri" => "#{spec.homepage}/blob/m/CHANGELOG.md",
    "documentation_uri" => spec.homepage.to_s,
    "homepage_uri" => spec.homepage.to_s,
    "source_code_uri" => spec.homepage.to_s
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "dist"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["src"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

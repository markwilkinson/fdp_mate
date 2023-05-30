# frozen_string_literal: true

require_relative "lib/fdp_mate/version"

Gem::Specification.new do |spec|
  spec.name = "fdp_mate"
  spec.version = FDPMate::VERSION
  spec.authors = ["Mark Wilkinson"]
  spec.email = ["markw@illuminae.com"]

  spec.summary = "Gem for interacting with FAIR Data Point reference implementation (only!)."
  spec.homepage = "https://github.com/markwilkinson/FDP-mate/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubgems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/markwilkinson/FDP-mate/"
  spec.metadata["changelog_uri"] = "https://github.com/markwilkinson/FDP-mate/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "linkeddata", "~>3.2.0"
  spec.add_dependency "rest-client", "~>2.1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

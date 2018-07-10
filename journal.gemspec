$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "journal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "journal"
  s.version     = Journal::VERSION
  s.authors     = ["Benjamin Willems"]
  s.email       = ["bw@benjaminwil.info"]
  s.homepage    = "https://benjaminwil.info"
  s.summary     = "A tumblog-like personal journal application."
  s.description = "A journal for all of your thoughts and feelings."
  s.license     = "GPL-3.0"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2"

  s.add_development_dependency "sqlite3", "1.3.11"
end

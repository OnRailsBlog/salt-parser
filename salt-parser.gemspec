# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "salt-parser/version"

Gem::Specification.new do |s|
  s.name        = "salt-parser"
  s.version     = SaltParser::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["saltedge team"]
  s.email       = ["support@saltedge.com"]
  s.homepage    = "http://saltedge.com"
  s.summary     = "Gem for parsing OFX, QIF and SWIFT formats."
  s.description = "Gem for parsing OFX, QIF and SWIFT formats."
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |file| File.basename(f) }
  s.require_paths = ["lib"]
  s.licenses      = ["MIT"]

  s.metadata = { "issue_tracker" => "https://github.com/saltedge/salt-parser/issues" }

  s.add_dependency "nokogiri"
  s.add_dependency "chronic"
  s.add_dependency "rack"
  s.add_dependency "activesupport"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency 'bundler', "~> 1.3"
  s.add_development_dependency "rake", "~> 1.6"
  s.add_development_dependency "pry-byebug", "~> 1.3"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edfenergy/api/version'

Gem::Specification.new do |spec|
  spec.name          = "edfenergy-api"
  spec.version       = Edfenergy::VERSION
  spec.authors       = ["Wayne Moore"]
  spec.email         = ["wayne@kotega.com"]
  spec.description   = %q{Screen Scraper API for EDF Energy online account}
  spec.summary       = %q{I'm tired of waiting for an API so that I can automatically submit meter readings}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mechanize", "~> 2.7.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end

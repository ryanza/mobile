# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mobile/version'

Gem::Specification.new do |spec|
  spec.name          = "mobile"
  spec.version       = Mobile::VERSION
  spec.authors       = ["Ryan Oberholzer"]
  spec.email         = ["ryan@platform45.com"]
  spec.description   = %q{Basic mobile device detection for rails applications}
  spec.summary       = %q{Basic mobile device detection for rails applications}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "actionpack"
  spec.add_development_dependency "activesupport"
  spec.add_dependency "activesupport"
  spec.add_dependency "rails"
end

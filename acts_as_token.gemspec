# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_token/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_token"
  spec.version       = ActsAsToken::VERSION
  spec.authors       = ["dilpreet92"]
  spec.email         = ["dilpreet@vinsol.com"]
  spec.summary       = %q{ creates a random token number }
  spec.description   = %q{ creates a random token number }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

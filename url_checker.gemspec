# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'url_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "url_checker"
  spec.version       = UrlChecker::VERSION
  spec.authors       = ["Ali B. Aslam"]
  spec.email         = ["ali@bletchley.co"]
  spec.homepage      = "http://github.com/bletchley/url_checker"

  spec.summary       = %q{A library for validating urls.}

  spec.license       = "MIT"

  spec.files         = Dir["config/**/*", "lib/**/*.rb", "app/**/*", "LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "ethon"
  spec.add_dependency "railties"
  spec.add_dependency "coffee-script"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

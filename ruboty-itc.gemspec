# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/itc/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-itc"
  spec.version       = Ruboty::Itc::VERSION
  spec.authors       = ["Yoshinori Hirasawa"]
  spec.email         = ["fakestarbaby@gmail.com"]
  spec.summary       = "Manage iTunes Connect via Ruboty."
  spec.homepage      = "https://github.com/fakestarbaby/ruboty-itc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_dependency "spaceship"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

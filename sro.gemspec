# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "sro"
  spec.version       = "0.0.2"
  spec.authors       = ["Michael Pope"]
  spec.email         = ["amorphid@captaincoder.io"]
  spec.summary       = %q{Some Ruby Objects}
  spec.description   = %q{ Checkout README.md }
  spec.homepage      = "https://github.com/amorphid/sro"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("uuidtools", "~> 2.1.4")

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "pry",     "~> 0.9.12.6"
  spec.add_development_dependency "rspec",   "~> 2.14.1"
end

# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-debug"
  spec.summary       = "A Jekyll filter that enables runtime debugging."
  spec.version       = "0.0.1"
  spec.authors       = ["Brian Hedberg"]
  spec.email         = "briansheahedberg@gmail.com"
  spec.homepage      = "https://github.com/gemfarmer/jekyll-debug"
  spec.licenses      = ["Nonstandard"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "liquid", [">= 2.5", "< 5.0"]
  spec.add_runtime_dependency "pry", '~> 0.10'
  spec.add_runtime_dependency "rb-readline", '~> 0.5'

  spec.add_development_dependency "jekyll", [">= 2.0", "< 4.0"]
  spec.add_development_dependency "bundler", "~> 1.6"
end

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inverse_attr/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kris Leech"]
  gem.email         = ["kris.leech@gmail.com"]
  gem.description   = "Macro to add inverted attributes to Ruby objects"
  gem.summary       = "Macro to add inverted attributes to Ruby objects"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inverse_attr"
  gem.require_paths = ["lib"]
  gem.version       = InverseAttr::VERSION

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
end

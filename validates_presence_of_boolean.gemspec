# -*- encoding: utf-8 -*-
require File.expand_path('../lib/validates_presence_of_boolean/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vasiliy Ermolovich"]
  gem.email         = ["younash@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "validates_presence_of_boolean"
  gem.require_paths = ["lib"]
  gem.version       = ValidatesPresenceOfBoolean::VERSION

  gem.add_dependency('activemodel', '~> 3.0')
end

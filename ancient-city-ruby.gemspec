# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Benjamin Smith"]
  gem.email         = ["benjamin.lee.smith@gmail.com"]
  gem.description   = "Ancient City Ruby Conf gem!"
  gem.summary       = "Ancient City Ruby Conf gem! Get the events_table, find the drinkups, enter to win one of 5 Pivotal Tracker $50 gift cards!"
  gem.homepage      = "http://www.ancientcityruby.com/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ancient-city-ruby"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
  gem.add_runtime_dependency "terminal-table"
end

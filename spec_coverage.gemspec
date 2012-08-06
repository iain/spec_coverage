# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Iain Hecker"]
  gem.email         = ["iain@iain.nl"]
  gem.description   = %q{Use SimpleCov more easily as an RSpec formatter}
  gem.summary       = %q{SpecCoverage allows you to use SimpleCov whenever you want, without having to put it in your spec_helper.rb file. It doesn’t output anything like you’d expect from a normal formatter, so you’re going to have to use another one to see your test output.}
  gem.homepage      = 'https://github.com/iain/spec_coverage'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "spec_coverage"
  gem.require_paths = ['lib']
  gem.version       = '0.0.5'

  gem.add_dependency 'rspec', '~> 2.0'
  gem.add_dependency 'simplecov'
end

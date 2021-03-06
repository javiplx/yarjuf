# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yarjuf/version'

Gem::Specification.new do |gem|
  gem.name        = 'yarjuf'
  gem.version     = Yarjuf::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ['Nat Ritmeyer']
  gem.email       = ['nat@natontesting.com']
  gem.homepage    = 'http://github.com/natritmeyer/yarjuf'
  gem.summary     = 'Yet Another RSpec JUnit Formatter (for Hudson/Jenkins)'
  gem.description = 'Yet Another RSpec JUnit Formatter (for Hudson/Jenkins)'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency('rspec', '~> 2.12')
  gem.add_runtime_dependency('builder')

  gem.add_development_dependency('nokogiri', '~> 1.5.10') # for Ruby 1.8.7
  gem.add_development_dependency('rake')
  gem.add_development_dependency('cucumber')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('simplecov')
  gem.add_development_dependency('reek', ['= 1.3.7']) # for Ruby 1.8.7
  gem.add_development_dependency('rainbow', '~> 1.99.2') # for Ruby 1.8.7
end

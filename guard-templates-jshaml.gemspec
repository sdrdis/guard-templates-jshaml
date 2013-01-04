# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/jshaml/version'

Gem::Specification.new do |s|
  s.name        = 'guard-jshaml'
  s.version     = 0.1
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sébastien Drouyer']
  s.email       = ['sdrdis@hotmail.com']
  s.homepage    = 'https://github.com/sdrdis/guard-templates-jshaml/'
  s.summary     = %q{Guard gem for JSHaml}
  s.description = %q{Compiles file.jshaml into file.js}

  s.rubyforge_project = 'guard-templates-jshaml'

  s.add_dependency('guard', '>= 1.1')
  s.add_dependency('haml_to_js')

  s.add_development_dependency('rspec')
  s.add_development_dependency('rake')

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end

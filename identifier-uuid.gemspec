# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-identifier-uuid'
  s.version = '2.1.0.2'
  s.summary = 'UUID v4 identifier generator with support for generating and parsing UUIDs, and dependency substitution'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/identifier-uuid'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_development_dependency 'test_bench'
end

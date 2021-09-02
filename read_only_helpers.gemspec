# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'read_only_helpers/version'

Gem::Specification.new do |s|
  s.name        = 'read_only_helpers'
  s.version     = ReadOnlyHelpers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mathieu Rheaume']
  s.email       = ['mrheaume@cortex.bz']
  s.homepage    = 'http://github.com/cortexmedia/read_only_helpers'
  s.summary     = 'Active support helpers for read only models'
  s.description = 'Active support helpers for read only models'

  s.required_rubygems_version = '>= 1.3.6'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  s.files        = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md)
  s.require_path = 'lib'
  s.add_development_dependency 'rdoc', '~> 6.3'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pry'

  s.add_runtime_dependency 'activerecord'
end

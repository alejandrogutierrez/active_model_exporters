# coding: utf-8

$:.unshift File.expand_path("../lib", __FILE__)
require 'active_model/exporter/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_model_exporters'
  spec.version       = ActiveModel::Exporter::VERSION
  spec.authors       = ['Alejandro Gutiérrez']
  spec.email         = ['alejandrodevs@gmail.com']
  spec.description   = 'A simple way to export data in Rails.'
  spec.summary       = 'A simple way to export data in Rails.'
  spec.homepage      = 'https://github.com/alejandrogutierrez/active_model_exporters'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'activemodel', '>= 3.2'
  spec.add_development_dependency 'rails', '>= 3.2'
end

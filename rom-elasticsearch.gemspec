# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rom/elasticsearch/version'

Gem::Specification.new do |spec|
  spec.name          = 'rom-elasticsearch'
  spec.version       = ROM::Elasticsearch::VERSION
  spec.authors       = ['Hannes Nevalainen', 'Piotr Solnica']
  spec.email         = ['hannes.nevalainen@me.com', 'piotr.solnica+oss@gmail.com']
  spec.summary       = %q{ROM adapter for Elasticsearch}
  spec.description   = %q{}
  spec.homepage      = 'http://rom-rb.org'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rom-core', '~> 4.1'
  spec.add_runtime_dependency 'elasticsearch', '~> 6.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end

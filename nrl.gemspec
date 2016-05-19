# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nrl/version'

Gem::Specification.new do |spec|
  spec.name          = 'nrl'
  spec.version       = NRL::VERSION
  spec.authors       = ['Cameron Attard']
  spec.email         = ['cameron.m.attard@gmail.com']

  spec.summary       = 'A Ruby wrapper library for the NRL API.'
  spec.homepage      = 'https://github.com/cameronattard/nrl'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'

  spec.add_runtime_dependency 'virtus', '~> 1.0'
  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.10'
  spec.add_runtime_dependency 'terminal-table', '~> 1.5'
  spec.add_runtime_dependency 'thor', '~> 0.19'
end

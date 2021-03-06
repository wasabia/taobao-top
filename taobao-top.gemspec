# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taobao/top/version'

Gem::Specification.new do |spec|
  spec.name          = "taobao-top"
  spec.version       = Taobao::Top::VERSION
  spec.authors       = ["xixilive"]
  spec.email         = ["xixilive@gmail.com"]
  spec.description   = %q{a simple ruby implementation of TOP API}
  spec.summary       = %q{a simple ruby implementation of TOP API}
  spec.homepage      = "https://github.com/xixilive/taobao-top"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hashie", ['>= 1.2','< 5']
  spec.add_dependency "activesupport", ['>= 3.2','< 7']
  spec.add_dependency "rest-client", "~> 2.0.2"
  spec.add_dependency "omniauth", '~> 1.2'
  spec.add_dependency "omniauth-oauth2", '~> 1.4'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake"
end

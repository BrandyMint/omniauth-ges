# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-ges/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-ges"
  gem.version       = Omniauth::Ges::VERSION
  gem.authors       = ["Alexander Logunov"]
  gem.email         = ["unlovedru@gmail.com"]
  gem.description   = %q{OmniAuth strategy for GES}
  gem.summary       = %q{OmniAuth strategy for GES}
  gem.homepage      = "https://github.com/BrandyMint/omniauth-ges"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end

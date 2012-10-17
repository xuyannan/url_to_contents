# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'url_to_contents/version'

Gem::Specification.new do |gem|
  gem.name          = "url_to_contents"
  gem.version       = UrlToContents::VERSION
  gem.authors       = ["skywalker"]
  gem.email         = ["skywalker418@gmail.com"]
  gem.description   = [""]
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

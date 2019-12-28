# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'pohoda'
  spec.version       = '3.1.1'
  spec.authors       = ['Premysl Donat']
  spec.email         = ['pdonat@seznam.cz']

  spec.summary       = 'Library for parsing and creating Stormware Pohoda XML invoices'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/Masa331/pohoda'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'ox'
  spec.add_dependency 'damedata_parser_core', '0.3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'nokogiri'
end

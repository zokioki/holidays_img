# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'holidays_img/version'

Gem::Specification.new do |spec|
  spec.name          = 'holidays_img'
  spec.version       = HolidaysImg::VERSION
  spec.authors       = ['Zoran Pesic']

  spec.summary       = %q{A holiday-aware image_tag wrapper.}
  spec.homepage      = 'https://github.com/zokioki/holidays_img'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'holidays', '~> 5.0'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

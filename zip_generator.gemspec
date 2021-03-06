# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zip_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "zip_generator"
  spec.version       = ZipGenerator::VERSION
  spec.authors       = ["Ankita Kanitkar","Hemali Jain"]
  spec.email         = ["ankitakanitkar@gmail.com"]
  spec.summary       = %q{Generate a zip file from array of files}
  spec.description   = %q{Generate a zip file from array of files}
  spec.homepage      = "https://github.com/ankitakanitkar/zip_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rubyzip", "~>1.0.0"
  spec.add_runtime_dependency "zip-zip"
  spec.add_development_dependency "rspec-rails"
end

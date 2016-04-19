# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdf_box/measurements/version'

Gem::Specification.new do |spec|
  spec.name          = "pdf_box-measurements"
  spec.version       = PdfBox::Measurements::VERSION
  spec.authors       = ["Roman Simecek"]
  spec.email         = ["roman@good2go.ch"]

  spec.summary       = %q{Measurements for pdf_box}
  spec.description   = %q{A few tools and extensions on Numeric for use in the pdf_box.}
  spec.homepage      = "https://github.com/raskhadafi"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end

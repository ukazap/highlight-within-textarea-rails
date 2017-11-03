# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "highlight/within/textarea/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "highlight-within-textarea-rails"
  spec.version       = Highlight::Within::Textarea::Rails::VERSION
  spec.authors       = ["Ukaza Perdana"]
  spec.email         = ["hello@ukazap.space"]

  spec.summary       = "Gemified version of highlight-within-textarea"
  spec.description   = "jQuery plugin for highlighting bits of text within a textarea."
  spec.homepage      = "https://github.com/ukazap/highlight-within-textarea-rails"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end

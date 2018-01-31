
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Alonso_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "Alonso_gem"
  spec.version       = AlonsoGem::VERSION
  spec.authors       = ["winderbinder"]
  spec.email         = ["junior_19000@hotmail.com"]

  spec.summary       = %q{methods for applications i will use.}
  spec.description   = %q{provides generated HTML data for rails applications.}
  spec.homepage      = "will be back :D ."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

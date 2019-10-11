lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-list"
  spec.version       = "0.0.4"
  spec.authors       = ["example"]
  spec.email         = ["example@gmail.com"]

  spec.summary       = "simple plugin in order to be able to view and edit serialized list within Administrate."
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.licenses      = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'administrate'
  spec.add_runtime_dependency 'rails', '>= 5.0'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

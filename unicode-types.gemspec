# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/unicode/types/constants"

Gem::Specification.new do |gem|
  gem.name          = "unicode-types"
  gem.version       = Unicode::Types::VERSION
  gem.summary       = "Determine the basic type of codepoints."
  gem.description   = "[Unicode version: #{Unicode::Types::UNICODE_VERSION}] Determine the basic type of codepoints (Graphic, Format, Control, Private-use, Surrogate, Noncharacter, Reserved)"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/unicode-types"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
end

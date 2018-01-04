# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Hangman"
  spec.version       = '0.1.0'
  spec.authors       = ["Ivan Szebenszki"]
  spec.email         = ["szib@noreply.github.com"]
  spec.summary       = %q{Hangman}
  spec.description   = %q{Hangman in Ruby}
  spec.homepage      = "https://github/szib/hangman"
  spec.license       = "MIT"

  spec.files         = ['lib/hangman.rb']
  spec.executables   = ['bin/hangman']
  spec.test_files    = ['tests/test_hangman.rb']
  spec.require_paths = ["lib"]
end

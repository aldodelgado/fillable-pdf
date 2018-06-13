lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fillable-pdf/version'

Gem::Specification.new do |spec|
  spec.name          = 'fillable-pdf'
  spec.version       = FillablePDF::VERSION
  spec.authors       = ['Vadim Kononov']
  spec.email         = ['vadim@poetic.com']

  spec.summary       = 'Fill out or extract field values from simple fillable PDF forms using iText.'
  spec.description   = 'FillablePDF is an extremely simple and lightweight utility that bridges iText and Ruby in order to fill out fillable PDF forms or extract field values from previously filled out PDF forms.'
  spec.homepage      = 'https://github.com/vkononov/fillable-pdf'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[ext lib]

  spec.requirements << '>= JDK 5.0'
end

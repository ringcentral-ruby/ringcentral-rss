lib = 'ringcentral-rss'
lib_file = File.expand_path("../lib/#{lib}.rb", __FILE__)
File.read(lib_file) =~ /\bVERSION\s*=\s*["'](.+?)["']/
version = $1

Gem::Specification.new do |s|
  s.name        = lib
  s.version     = version
  s.date        = '2016-11-08'
  s.summary     = 'RingCentral RSS - Convert RingCentral Message Store Results to RSS'
  s.description = 'Convert RingCentral Message Store Results to RSS'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.licenses    = ['MIT']
  s.files       = Dir['lib/**/**/*']
  s.files      += Dir['[A-Z]*'] + Dir['test/**/*']

  s.required_ruby_version = '>= 2.2.2'

  s.add_dependency 'ratom', '~> 0', '>= 0.9.0'

  s.add_development_dependency 'coveralls', '~> 0'
  s.add_development_dependency 'faraday', '~> 0.9'
  s.add_development_dependency 'nokogiri', '~> 1.6'
  s.add_development_dependency 'rake', '~> 11'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'test-unit', '~> 3'
end

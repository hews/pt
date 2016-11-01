lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'pt/version'

Gem::Specification.new do |s|
  s.name    = 'pt'
  s.version = PT::VERSION

  s.authors     = ['Raul Murciano', 'Orta Therox', 'Engineering at Causes']
  s.email       = ['raul@murciano.net', 'orta.therox@gmail.com', 'eng@causes.com']
  s.homepage    = 'http://www.github.com/raul/pt'
  s.summary     = 'Pivotal Tracker CLI tool.'
  s.description = 'Minimalist, opinionated client to manage your Pivotal Tracker tasks from the command line.'
  s.license     = 'MIT'

  s.executables   = ['pt']
  s.files         = Dir['{lib}/**/*', '[A-Z]*', 'init.rb'] - ['Gemfile.lock']
  s.require_paths = ['lib']
  
  s.add_runtime_dependency 'pivotal-tracker', '~> 0.5', '>= 0.5.13'
  s.add_runtime_dependency 'hirb',            '~> 0.7', '>= 0.7.3'
  s.add_runtime_dependency 'colorize',        '~> 0.8', '>= 0.8.1'
  s.add_runtime_dependency 'highline',        '~> 1.7', '>= 1.7.8'
  
  s.add_development_dependency 'rake', '~> 11.3', '>= 11.3.0'
  s.add_development_dependency 'pry',  '~> 0.10', '>= 0.10.4'

  s.platform = Gem::Platform::RUBY
end
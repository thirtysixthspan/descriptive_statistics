Gem::Specification.new do |s|
  s.name        = 'descriptive_statistics'
  s.version     = '1.0.1'
  s.date        = '2012-06-15'
  s.homepage    = 'http://github.com/thirtysixthspan/descriptive_statistics'
  s.summary     = 'Descriptive Statistics'
  s.description = 'Adds descriptive statistics methods to Enumerable for use on collections'
  s.authors     = ['Derrick Parkhurst']
  s.email       = 'derrick.parkhurst@gmail.com'
  s.platform    = Gem::Platform::RUBY
  s.files       = Dir.glob('{lib,examples,test}/**/**/*')
  s.require_paths = ['lib']
end


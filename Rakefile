require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rspec/core/rake_task'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end

RSpec::Core::RakeTask.new(:spec)

task :default => [ :test, :spec ]

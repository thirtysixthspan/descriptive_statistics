require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:refinement) do |task|
    task.rspec_opts = "--order rand"
    task.pattern = "spec/refinement/*_spec.rb"
  end

  RSpec::Core::RakeTask.new(:monkeypatch) do |task|
    task.rspec_opts = "--order rand"
    task.pattern = "spec/monkeypatch/*_spec.rb"
  end

  RSpec::Core::RakeTask.new(:safe) do |task|
    task.rspec_opts = "--order rand"
    task.pattern = "spec/safe/*_spec.rb"
  end

rescue LoadError
  warn "rspec unavailable"
end

task :default => [ :test, :monkeypatch, :refinement, :safe ]

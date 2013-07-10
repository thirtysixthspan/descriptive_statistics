require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end
  
namespace "gem" do
  task :build do
    system('gem build descriptive_statistics.gemspec')
  end

  task :install => ["gem:build"] do
    system('gem install descriptive_statistics*.gem')
  end

end

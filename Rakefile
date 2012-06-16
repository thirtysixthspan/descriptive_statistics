task :test do 
  system ('ruby test/test.rb')
end

namespace "gem" do
  task :build do
    system('gem build descriptive_statistics.gemspec')
  end

  task :install => ["gem:build"] do
    system('gem install descriptive_statistics*.gem')
  end

end

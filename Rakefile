require 'rspec/core/rake_task'

desc "Run tests"
task :spec do
  RSpec::Core::RakeTask.new(:spec)
end

desc "Run app"
task :default do
  require 'bundler/setup'
  require 'awesome_print'

  files = Dir.glob("./lib/*.rb")
  begin
    raise unless files.any?

    require files.first

  rescue => e
    puts "Nothing to run!"
  end
end

gem 'rspec'
require 'rspec/core/rake_task'

desc "Default Task"
task :default => [ :spec ]

desc "Run all specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb"
  t.rspec_opts = "--fail-fast --format documentation --colour"
end


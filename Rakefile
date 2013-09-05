# require 'ci/reporter/rake/rspec'
# require 'rspec/core/rake_task'

# RSpec::Core::RakeTask.new(:spec) do |config|
# 	config.rspec_opts = "--format h --out tests"
# end

task :coverage do
	ENV["COVERAGE"] = 'yes'

	Rake::Task['spec'].execute
end

task :default do
	puts 'say hello'
end
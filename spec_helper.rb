require 'simplecov'
require 'json'

if ENV['COVERAGE']
	SimpleCov.start do
		add_filter '/specs/'
	end
end
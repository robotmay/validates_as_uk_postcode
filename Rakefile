require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rake/clean'

desc 'Default: run unit tests.'
task :default => :test

begin
  require 'jeweler'
  Jeweler::Tasks.new do |jewel|
    jewel.name        = 'validates_as_uk_postcode'
    jewel.summary     = 'Validates a field is a valid UK postcode'
    jewel.email       = ['me@davidjrice.co.uk']
    jewel.homepage    = 'http://github.com/davidjrice/validates_as_uk_postcode'
    jewel.description = 'A library for validating uk postcodes'
    jewel.authors     = ["Steven Rushe", "David Rice"]
    jewel.files       = FileList["rails/*.rb", "lib/**/*.rb", "*.rb", "MIT-LICENCE", "README.markdown"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

desc 'Test the plugin.'
Rake::TestTask.new(:test_rails2) do |t|
  t.libs << 'lib'
  t.libs << 'test/rails2'
  t.pattern = 'test/rails2/**/*_test.rb'
  t.verbose = true
end

Rake::TestTask.new(:test_rails3) do |t|
  t.libs << 'lib'
  t.libs << 'test/rails3'
  t.pattern = 'test/rails3/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ValidatesAsUKPostcode'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.markdown')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


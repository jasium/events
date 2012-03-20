# coding: utf-8
require 'rake'
require 'rake/testtask'

desc "Run the unit tests"
task :default => 'test'

Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*_test.rb'
  t.ruby_opts << '-rubygems'
  t.libs << 'test'
  t.verbose = true
end

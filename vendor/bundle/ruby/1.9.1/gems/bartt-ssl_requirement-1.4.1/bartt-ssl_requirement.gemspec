# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = "bartt-ssl_requirement"
  s.version = `cat VERSION`.strip
  s.required_rubygems_version = ">= 1.3.6"
  s.authors = [%q{RailsJedi}, %q{David Heinemeier Hansson}, %q{jcnetdev}, %q{bcurren}, %q{bmpercy}, %q{revo}, %q{nathany}, %q{bartt}, %q{Thorben Schröder}]
  s.homepage = "https://github.com/bartt/ssl_requirement"
  s.summary = "Allow controller actions to force SSL on specific parts of the site."
  s.description = "SSL requirement adds a declarative way of specifying that certain actions should only be allowed to run under SSL, and if they're accessed without it, they should be redirected."
  s.email = "bart@thecodemill.biz"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md",
    "Rakefile",
    "VERSION",
    "bartt-ssl_requirement.gemspec",
    "init.rb",
    "lib/ssl_requirement.rb",
    "lib/url_for.rb",
    "rails/init.rb",
    "test/ssl_requirement_test.rb",
    "test/url_for_test.rb"
  ]
  s.require_path = "lib"
end
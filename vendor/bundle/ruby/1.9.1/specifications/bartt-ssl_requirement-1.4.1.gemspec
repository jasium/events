# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bartt-ssl_requirement"
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["RailsJedi", "David Heinemeier Hansson", "jcnetdev", "bcurren", "bmpercy", "revo", "nathany", "bartt", "Thorben Schr\u{f6}der"]
  s.date = "2012-01-03"
  s.description = "SSL requirement adds a declarative way of specifying that certain actions should only be allowed to run under SSL, and if they're accessed without it, they should be redirected."
  s.email = "bart@thecodemill.biz"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/bartt/ssl_requirement"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Allow controller actions to force SSL on specific parts of the site."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

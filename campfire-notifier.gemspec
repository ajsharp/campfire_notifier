# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{campfire-notifier}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Sharp"]
  s.date = %q{2009-12-18}
  s.default_executable = %q{campfire_notifier}
  s.description = %q{See github page.}
  s.email = %q{ajsharp@gmail.com}
  s.executables = ["campfire_notifier"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/campfire_notifier",
     "campfire-notifier.gemspec",
     "lib/campfire_notifier.rb",
     "settings.yml.sample",
     "spec/campfire_notifier_spec.rb",
     "spec/fixtures/rooms.json",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "vendor/gems/cache/crack-0.1.4.gem",
     "vendor/gems/cache/httparty-0.5.0.gem",
     "vendor/gems/cache/json_pure-1.2.0.gem",
     "vendor/gems/cache/rspec-1.2.9.gem"
  ]
  s.homepage = %q{http://github.com/ajsharp/campfire_notifier}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A really simple gem for sending simple messages to Campfire.}
  s.test_files = [
    "spec/campfire_notifier_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end


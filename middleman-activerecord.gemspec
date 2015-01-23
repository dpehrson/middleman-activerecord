# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-activerecord"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Pehrson"]
  s.email       = ["dpehrson@qurve.com"]
  s.homepage    = "http://www.danielpehrson.com/"
  s.summary     = %q{Provides ActiveRecord support to middleman applications}
  # s.description = %q{A longer description of your extension}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency('middleman-core', ['>= 3.3.7'])
  s.add_runtime_dependency('activerecord', ['~> 4.1.8'])

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end

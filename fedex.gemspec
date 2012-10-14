# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fedex/version"

Gem::Specification.new do |s|
  s.name        = "fedex"
  s.version     = Fedex::VERSION
  s.authors     = ["cookiebatch"]
  s.email       = ["keymint1498@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Easy ActionMailer}
  s.description = %q{Easy ActionMailer}

  s.rubyforge_project = "fedex"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
	s.add_development_dependency "rr"
	s.add_runtime_dependency     "yard"
	s.add_runtime_dependency     "redcarpet"
	s.add_runtime_dependency     "github-markup"
end

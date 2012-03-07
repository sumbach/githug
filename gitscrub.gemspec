# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gitscrub/version"

Gem::Specification.new do |s|
  s.name        = "gitscrub"
  s.version     = Gitscrub::VERSION
  s.authors     = ["Gary Rennie"]
  s.email       = ["webmaster@gazler.com"]
  s.homepage    = ""
  s.summary     = %q{An interactive way to learn git.}
  s.description = %q{An interactive way to learn git.}

  s.rubyforge_project = "gitscrub"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", "~>2.8.0"

  s.add_dependency "grit", "~>2.4.1"
  # s.add_runtime_dependency "rest-client"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shaderize/version"

Gem::Specification.new do |s|
  s.name        = "shaderize"
  s.version     = Shaderize::VERSION
  s.authors     = ["Patrick Hogan"]
  s.email       = ["pbhogan@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A utility to help scaffold code from OpenGL ES 2 shaders.}
  s.description = %q{A utility to help scaffold code from OpenGL ES 2 shaders.}

  s.rubyforge_project = "shaderize"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_runtime_dependency "mustache"
end

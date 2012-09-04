# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "training_wheels/version"

Gem::Specification.new do |s|
  s.name        = "training_wheels"
  s.version     = TrainingWheels::VERSION
  s.authors     = ["Conrad VanLandingham"]
  s.email       = ["conrad@landdolph.in"]
  s.homepage    = ""
  s.summary     = "A simple Sprockets engine that puts training wheels on your Handlebar templates (wraps them up and adds them to Ember's global TEMPLATE variable)"
  s.description = "A simple Sprockets engine that puts training wheels on your Handlebar templates (wraps them up and adds them to Ember's global TEMPLATE variable)"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

 # s.add_runtime_dependency "execjs", ">= 1.2.9"
  s.add_runtime_dependency "tilt"
  s.add_runtime_dependency "sprockets", ">= 2.0.3"
  s.add_development_dependency "rake"
end
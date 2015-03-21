# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boxmodel2/version'

Gem::Specification.new do |s|
  s.name        = 'boxmodel2'
  s.version     = Boxmodel2::VERSION
  s.license     = 'MIT'
  s.date        = '2015-03-21'
  
  s.summary     = "Boxmodel2, css classes modifying box model"
  s.description = "Boxmodel2 is css library providing css classes to modify margins, paddings, borders, dimensions and positions without writing css declarations by yourself."
  
  s.authors     = ["Paweł Rosa"]
  s.email       = 'pawel.t.rosa@gmail.com'
  s.homepage    = 'https://github.com/pawelrosa/boxmodel2'
  
  s.files       = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  
  s.add_dependency 'sass', '>= 3.4'
end
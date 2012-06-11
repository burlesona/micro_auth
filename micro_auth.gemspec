# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'micro_auth/version'

Gem::Specification.new do |s|
  s.name = 'micro_auth'
  s.version = MicroAuth::VERSION
  s.authors = ["Andrew Burleson"]
  s.email = 'andrew@eighty-b.com'
  s.summary = "An absolutely tiny authentication gem for single-admin rails apps."
  s.homepage = "http://github.com/burlesona/micro_auth"
  s.add_dependency 'rails', '>= 3.1'
  s.files = Dir.glob("{lib}/**/*") + %w(CHANGELOG README.md LICENSE)
  
  s.description = "An absolutely tiny authentication gem for single-admin rails apps."
end
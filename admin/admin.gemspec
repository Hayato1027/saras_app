$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["HayatoKoiso"]
  s.email       = ["hayato.k1027@gmail.com"]
  s.homepage    = "localhost:3000"
  s.summary     =  "SARAS管理画面"
  s.description = "SARAS管理画面"
  s.license     = "none"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "mysql2"
end

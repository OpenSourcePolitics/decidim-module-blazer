# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/blazer/version"

Gem::Specification.new do |s|
  s.version = Decidim::Blazer.version
  s.authors = ["moustachu"]
  s.email = ["git@moustachu.net"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/decidim/decidim-module-blazer"
  s.required_ruby_version = ">= 2.5"

  s.name = "decidim-blazer"
  s.summary = "A decidim blazer module"
  s.description = "Business intelligence made simple."

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "chartkick"
  s.add_dependency "groupdate"
  s.add_dependency "hightop"
  s.add_dependency "active_median"
  s.add_dependency "blazer"

  s.add_dependency "decidim-core"
end

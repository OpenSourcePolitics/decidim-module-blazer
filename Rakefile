# frozen_string_literal: true

require "decidim/dev/common_rake"

def copy_config_file(path)
  source = File.join("config", "blazer.yml")
  target = File.join(path, "config", "blazer.yml")
  FileUtils.cp_r source, target
end

task :copy_config_file do
  copy_config_file("development_app")
end

def install_module(path)
  Dir.chdir(path) do
    system("bundle exec rake decidim_blazer:install:migrations")
    system("bundle exec rake db:migrate")
  end
  copy_config_file(path)
end

def seed_db(path)
  Dir.chdir(path) do
    system("bundle exec rake db:seed")
  end
end

desc "Generates a dummy app for testing"
task test_app: "decidim:generate_external_test_app" do
  ENV["RAILS_ENV"] = "test"
  install_module("spec/decidim_dummy_app")
end

desc "Generates a development app"
task development_app: "decidim:generate_external_development_app" do
  install_module("development_app")
end

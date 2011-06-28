# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

task :make_coffee do
  puts "make coffee"
end

task :default => 'make_coffee'

Transunion::Application.load_tasks

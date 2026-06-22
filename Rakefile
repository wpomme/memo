# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]

task :list do
  sh %(bundle exec ruby exe/memo list)
end

task :read do
  sh %(bundle exec ruby exe/memo read)
end

task :dirs do
  sh %(bundle exec ruby exe/memo dirs)
end

task :help do
  sh %(bundle exec ruby exe/memo --help)
end

task :format do
  sh %(bundle exec rubocop -A)
end

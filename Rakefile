# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"
require "rake/TestTask"
require "rubocop/rake_task"

Minitest::TestTask.create

RuboCop::RakeTask.new

Rake::TestTask.new do |t|
  t.pattern = 'test/**/test_*.rb'
end

task default: :test

# 次のようにして引数を渡す
# rake "memo[read, tmux]"
desc "Execute memo CLI. memo CLI takes some arguments as sub commands"
task :memo, [:sub_command, :sub_command_arg] do |_, args|
  args.with_defaults(sub_command: 'list')

  cmd = ["bundle", "exec", "ruby", "exe/memo", args.sub_command]
  cmd << args.sub_command_arg if args.sub_command_arg

  sh(*cmd)
end

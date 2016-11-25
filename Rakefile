require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop_no_color) do |t|
  t.options = ['-D', '--no-color']
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['-D']
end

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec_no_color) do |t|
  t.rspec_opts = ['--no-color']
end

RSpec::Core::RakeTask.new(:spec)

task default: :test

task test: [:spec_no_color, :rubocop_no_color]

task pretty_test: [:spec, :rubocop]

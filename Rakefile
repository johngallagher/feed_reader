require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['-D']
end

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: [:spec, :rubocop]

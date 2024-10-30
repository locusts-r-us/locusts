# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create(:test) do |t|
  t.libs << "tests"
  t.libs << "src"
  t.warning = false
  t.test_globs = ["tests/**/test_*.rb"]
end

require "standard/rake"

task default: %i[test standard]

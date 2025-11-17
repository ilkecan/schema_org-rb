# frozen_string_literal: true

Dir.glob("codegen/tasks/**/*.rake").each { load it }

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "standard/rake"

task default: %i[test standard]

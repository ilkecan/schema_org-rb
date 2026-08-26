# frozen_string_literal: true

require "tempfile"
require "minitest/autorun"
require_relative "../codegen/system/boot"

module CodegenTestHelper
  def fixture(name)
    File.expand_path("fixtures/codegen/#{name}.ttl", __dir__)
  end

  def parser_for(name)
    SchemaOrg::Codegen::Parser.new(schema_file: fixture(name))
  end

  def vocabulary_for(name)
    SchemaOrg::Codegen::Vocabulary.new(parser: parser_for(name))
  end
end

class Minitest::Test
  include CodegenTestHelper
end

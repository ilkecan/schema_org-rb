require 'dry-types'
require 'dry/inflector'
require 'json'

module SchemaOrg
  module Codegen
    class ValidationError < StandardError
      def self.from_result(result, message: nil)
        lines = []
        lines << message if message
        lines << "Data: #{JSON.pretty_generate(result.to_h)}"
        lines << "Errors: #{JSON.pretty_generate(result.errors.to_h)}"
        new(lines.join("\n"))
      end
    end

    INFLECTOR = Dry::Inflector.new

    module Types
      include Dry.Types()
    end
  end
end

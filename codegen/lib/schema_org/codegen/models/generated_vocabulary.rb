module SchemaOrg
  module Codegen
    module Models
      class GeneratedVocabulary
        attr_reader :constants, :files, :enumeration_names

        def initialize(constants:, files:, enumeration_names:)
          @constants = constants.freeze
          @files = files.freeze
          @enumeration_names = enumeration_names.freeze
        end

        def schema_to_ruby
          constants.to_h { |entry| [entry.fetch(:schema_name), entry.fetch(:ruby_name)] }
        end

        def ruby_to_schema
          constants.to_h { |entry| [entry.fetch(:ruby_name), entry.fetch(:schema_name)] }
        end

        def file_to_ruby
          files.to_h { |entry| [entry.fetch(:file_name), entry.fetch(:ruby_name)] }
        end
      end
    end
  end
end

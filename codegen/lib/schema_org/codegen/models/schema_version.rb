module SchemaOrg
  module Codegen
    module Models
      class SchemaVersion
        SCHEMA_HEADER = /^# schema_org_release: (v\d+\.\d+)$/
        SOURCE_HEADER = /^# schema_org_source: (https:\/\/schema\.org\/version\/(\d+\.\d+)\/schemaorg-all-https\.ttl)$/

        attr_reader :schema_version, :schema_source

        def initialize(schema_version:, schema_source: nil)
          @schema_version = schema_version.freeze
          @schema_source = schema_source&.freeze
        end

        def self.current(schema_file: Pathname.new("./codegen/data/schema.ttl"))
          lines = Pathname.new(schema_file).read.lines
          release = lines[0]&.chomp&.match(SCHEMA_HEADER)
          source = lines[1]&.chomp&.match(SOURCE_HEADER)
          unless release && source && release[1] == "v#{source[2]}"
            raise ValidationError, "schema.ttl must begin with matching release and source headers"
          end
          raise ValidationError, "schema.ttl contains duplicate release/source headers" if lines[2..].to_a.any? { |line| line.match?(SCHEMA_HEADER) || line.match?(SOURCE_HEADER) }

          new(schema_version: release[1], schema_source: source[1])
        rescue Errno::ENOENT
          raise ValidationError, "schema.ttl is missing"
        end
      end
    end
  end
end

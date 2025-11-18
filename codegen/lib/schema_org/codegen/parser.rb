require 'dry-initializer'
require 'rdf/turtle'

module SchemaOrg
  module Codegen
    class Parser
      extend Dry::Initializer

      option :schema_file, default: proc { './codegen/data/schema.ttl' }

      def reader
        @reader ||= RDF::Turtle::Reader.open(schema_file)
      end

      def prefixes
        reader.prefixes
      end

      def statements
        @statements ||= reader.each_statement.group_by { it.subject }.values
      end

      def subjects
        @subjects ||= begin
          statements # force enumeration to populate `reader.prefixes`
          klass = Subject.with prefixes
          statements.map { klass.from_statements it }.group_by { it.type }
        end
      end

      def classes
        subjects[:Class]
      end

      def properties
        subjects[:Property]
      end
    end
  end
end

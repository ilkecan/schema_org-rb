require 'dry-initializer'
require 'rdf/turtle'

module SchemaOrg
  module Codegen
    class Parser
      extend Dry::Initializer

      option :schema_file, default: proc { './codegen/data/schema.ttl' }

      def classes
        subjects[:Class]
      end

      def data_types
        subjects[:DataType]
      end

      def properties
        subjects[:Property]
      end

      private

      def reader
        @reader ||= RDF::Turtle::Reader.open(schema_file)
      end

      def prefixes
        @prefixes ||= begin
          statements # force enumeration to populate `reader.prefixes`
          reader.prefixes
        end
      end

      def statements
        @statements ||= reader.each_statement.group_by(&:subject).values
      end

      def subjects
        @subjects ||= begin
          factory = Subject::Factory.new(prefixes:)
          statements.map { factory.build it }.group_by(&:type)
        end
      end
    end
  end
end

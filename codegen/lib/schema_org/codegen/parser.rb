require 'rdf/turtle'

module SchemaOrg
  module Codegen
    class Parser
      def initialize(schema_file: './codegen/data/schema.ttl')
        @schema_file = schema_file
      end

      def subjects
        @subjects ||= begin
          factory = Subject::Factory.new(prefixes:)
          statements.map { |items| factory.build(items) }
        end
      end

      def classes
        subjects.select { |subject| subject.type? :Class }
      end

      def properties
        subjects.select { |subject| subject.type? :Property }
      end

      private

      attr_reader :schema_file

      def reader
        @reader ||= RDF::Turtle::Reader.open(schema_file)
      end

      def prefixes
        @prefixes ||= begin
          statements
          reader.prefixes
        end
      end

      def statements
        @statements ||= reader.each_statement.group_by(&:subject).values
      end
    end
  end
end

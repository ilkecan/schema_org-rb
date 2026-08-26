require "rdf/turtle"

module SchemaOrg
  module Codegen
    class Parser
      def initialize(schema_file: "./codegen/data/schema.ttl")
        @schema_file = schema_file
      end

      def subjects
        @subjects ||= begin
          factory = Subject::Factory.new(prefixes:)
          statements.filter_map do |url, items|
            next unless schema_subject?(url)

            factory.build(items, url: url.to_s)
          end
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
        @statements ||= reader.each_statement.group_by(&:subject)
      end

      def schema_subject?(url)
        text = url.to_s
        text.start_with?(Vocabulary::SCHEMA_HTTP, Vocabulary::SCHEMA_HTTPS)
      end
    end
  end
end

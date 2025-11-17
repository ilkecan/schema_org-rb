require 'dry-initializer'
require 'dry/inflector'
require 'rdf/turtle'

INFLECTOR = Dry::Inflector.new

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
          klass = self.class.new_subject_class prefixes
          statements.map { klass.from_statements it }.group_by { it.type }
        end
      end

      def classes
        subjects[:Class]
      end

      def properties
        subjects[:Property]
      end

      def self.new_subject_class(prefixes)
        Class.new do
          extend Dry::Initializer

          @@prefixes = prefixes

          %w[
            comment
            label
            type
          ].each { option it }

          # owl:equivalentClass
          # owl:equivalentProperty
          %w[
            contributor
            domainIncludes
            equivalentClass
            equivalentProperty
            inverseOf
            rangeIncludes
            sameAs
            source
            subClassOf
            subPropertyOf
            supersededBy
          ].each { option INFLECTOR.underscore(it), optional: true }

          def self.from_statements(xs)
            args = parse_statements(xs)
            new(**args)
          end

          class << self
            private

            def parse_statements(xs)
              xs.map do
                [INFLECTOR.underscore(parse_item(it.predicate).to_s).to_sym, parse_item(it.object)]
              end.to_h
            end

            def parse_item(x)
              case x
              when RDF::Literal
                x.value.to_sym
              when RDF::URI
                qname = x.qname(prefixes: @@prefixes)
                qname.nil? ? x.to_s : qname[1]
              when RDF::Vocabulary::Term
                x.label.value.to_sym
              end
            end
          end

          def class_name
            label
          end

          def superclass_name
            sub_class_of
          end

          def url
            "#{@@prefixes[nil]}#{label}"
          end
        end
      end
    end
  end
end

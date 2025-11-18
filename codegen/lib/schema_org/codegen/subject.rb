require 'dry-initializer'

module SchemaOrg
  module Codegen
    module Subject
      module_function

      def with(prefixes)
        Class.new do
          extend Dry::Initializer

          @@prefixes = prefixes.freeze

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

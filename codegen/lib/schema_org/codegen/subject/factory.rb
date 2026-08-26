module SchemaOrg
  module Codegen
    class Subject
      class Factory
        attr_reader :attributes, :naming

        RDF_CLASS = "http://www.w3.org/2000/01/rdf-schema#Class"
        RDF_PROPERTY = "http://www.w3.org/1999/02/22-rdf-syntax-ns#Property"
        RDF_TYPE = "http://www.w3.org/1999/02/22-rdf-syntax-ns#type"
        RDFS = "http://www.w3.org/2000/01/rdf-schema#"

        def initialize(prefixes:, attributes: Subject::Attributes.new, naming: Naming.new)
          @attributes = attributes
          @naming = naming
          @prefixes = prefixes.freeze
        end

        def build(statements, url:)
          args = validate(parse_statements(statements))
          normalize(args)
          attributes.each { |attribute| args[attribute[:name]] ||= attribute[:array] ? [] : attribute[:default] }
          Subject.new(**args, prefixes: @prefixes, statements:, url:)
        end

        def contract
          @contract ||= Contract.new(attributes:)
        end

        def normalize(args)
          args.each { |key, value| args[key] = normalize_value(key, value) }
        end

        def parse_statements(statements)
          statements.each_with_object(Hash.new { |hash, key| hash[key] = [] }) do |statement, result|
            key = naming.method_name(parse_item(statement.predicate, predicate: true))
            result[key] << parse_item(statement.object, marker: key == :type)
          end
        end

        def parse_item(value, marker: false, predicate: false)
          case value
          when RDF::Literal
            value.value
          when RDF::URI
            uri = value.to_s
            return :Class if marker && uri == RDF_CLASS
            return :Property if marker && uri == RDF_PROPERTY
            return uri.split(/[\/#]/).last.to_sym if predicate
            return schema_term(uri) if schema_term(uri)

            uri
          when RDF::Vocabulary::Term
            value.label.value
          end
        end

        def validate(args)
          result = contract.call(args)
          raise ValidationError, "Invalid subject: #{result[:errors].join(", ")}" unless result[:errors].empty?

          result[:values]
        end

        private

        def normalize_value(key, value)
          return value.first unless attributes[key][:array]

          value
        end

        def schema_term(uri)
          return uri.delete_prefix("https://schema.org/").to_sym if uri.start_with?("https://schema.org/")
          return uri.delete_prefix("http://schema.org/").to_sym if uri.start_with?("http://schema.org/")

          nil
        end
      end
    end
  end
end

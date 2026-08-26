module SchemaOrg
  module Codegen
    module Models
      class Signature
        attr_reader :types

        def initialize(types:)
          @types = types.freeze
        end

        def property_type(property)
          value = property[:type]
          "(#{value} | ::Array[#{value}] | nil)"
        end

        def constructor_keywords(properties)
          properties.map { |entry| "?#{entry[:property].name}: #{property_type(entry)}" }.join(", ")
        end

        def enum_type(types)
          declared = types.map { |type| "SchemaOrg::_#{type}" }
          generic = declared.empty? ? "untyped" : declared.join(" & ")
          "SchemaOrg::EnumerationValue[#{generic}]"
        end
      end
    end
  end
end

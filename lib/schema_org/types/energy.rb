# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/Energy
  #
  # Properties that take Energy as values are of the form '&lt;Number&gt; &lt;Energy unit of measure&gt;'.
  class Energy < Base
    include Mixins::Energy

    SCHEMA_NAME = "Energy"
    SCHEMA_TYPES = [self, SchemaOrg::Quantity, SchemaOrg::DataType].freeze
    ABSTRACT_TYPE = true

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        raise AbstractTypeError, "Energy is an abstract schema type"
      end
    end
  end
end

# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/DefinedRegion
  #
  # A DefinedRegion is a geographic area defined by potentially arbitrary (rather than political, administrative or natural geographical) criteria. Properties are provided for defining a region by reference to sets of postal codes.
  #
  # Examples: a delivery destination when shopping. Region where regional pricing is configured.
  #
  # Requirement 1:
  # Country: US
  # States: "NY", "CA"
  #
  # Requirement 2:
  # Country: US
  # PostalCode Set: { [94000-94585], [97000, 97999], [13000, 13599]}
  # { [12345, 12345], [78945, 78945], }
  # Region = state, canton, prefecture, autonomous community...
  class DefinedRegion < Base
    include Mixins::DefinedRegion

    SCHEMA_NAME = "DefinedRegion"
    SCHEMA_TYPES = [self, SchemaOrg::Place, SchemaOrg::StructuredValue, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
        super
      end
    end
  end
end

# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/LegalForceStatus
  #
  # A list of possible statuses for the legal force of a legislation.
  class LegalForceStatus < Base
    include Mixins::LegalForceStatus

    SCHEMA_NAME = "LegalForceStatus"
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    IN_FORCE = EnumerationValue.new("InForce", [SchemaOrg::LegalForceStatus])
    NOT_IN_FORCE = EnumerationValue.new("NotInForce", [SchemaOrg::LegalForceStatus])
    PARTIALLY_IN_FORCE = EnumerationValue.new("PartiallyInForce", [SchemaOrg::LegalForceStatus])
    VALUES = [IN_FORCE, NOT_IN_FORCE, PARTIALLY_IN_FORCE].freeze

    def self.values
      VALUES
    end
  end
end

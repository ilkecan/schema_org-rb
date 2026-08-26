# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ContactPointOption
  #
  # Enumerated options related to a ContactPoint.
  class ContactPointOption < Base
    include Mixins::ContactPointOption

    SCHEMA_NAME = "ContactPointOption"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    HEARING_IMPAIRED_SUPPORTED = EnumerationValue.new("HearingImpairedSupported", [SchemaOrg::ContactPointOption])
    TOLL_FREE = EnumerationValue.new("TollFree", [SchemaOrg::ContactPointOption])
    VALUES = [HEARING_IMPAIRED_SUPPORTED, TOLL_FREE].freeze

    def self.values
      VALUES
    end
  end
end

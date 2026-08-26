# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RsvpResponseType
  #
  # RsvpResponseType is an enumeration type whose instances represent responding to an RSVP request.
  class RsvpResponseType < Base
    include Mixins::RsvpResponseType

    SCHEMA_NAME = "RsvpResponseType"
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
    RSVP_RESPONSE_MAYBE = EnumerationValue.new("RsvpResponseMaybe", [SchemaOrg::RsvpResponseType])
    RSVP_RESPONSE_NO = EnumerationValue.new("RsvpResponseNo", [SchemaOrg::RsvpResponseType])
    RSVP_RESPONSE_YES = EnumerationValue.new("RsvpResponseYes", [SchemaOrg::RsvpResponseType])
    VALUES = [RSVP_RESPONSE_MAYBE, RSVP_RESPONSE_NO, RSVP_RESPONSE_YES].freeze

    def self.values
      VALUES
    end
  end
end

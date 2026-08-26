module SchemaOrg
  # https://schema.org/RsvpResponseType
  #
  # RsvpResponseType is an enumeration type whose instances represent responding to an RSVP request.
  class RsvpResponseType < Base
    include Mixins::RsvpResponseType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
    RSVP_RESPONSE_MAYBE = EnumerationValue.new("RsvpResponseMaybe", self, [SchemaOrg::RsvpResponseType]).freeze
    RSVP_RESPONSE_NO = EnumerationValue.new("RsvpResponseNo", self, [SchemaOrg::RsvpResponseType]).freeze
    RSVP_RESPONSE_YES = EnumerationValue.new("RsvpResponseYes", self, [SchemaOrg::RsvpResponseType]).freeze
    VALUES = [RSVP_RESPONSE_MAYBE, RSVP_RESPONSE_NO, RSVP_RESPONSE_YES].freeze

    def self.values
      VALUES
    end
  end
end

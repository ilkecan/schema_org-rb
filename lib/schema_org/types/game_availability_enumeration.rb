# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/GameAvailabilityEnumeration
  #
  # For a [[VideoGame]], such as used with a [[PlayGameAction]], an enumeration of the kind of game availability offered.
  class GameAvailabilityEnumeration < Base
    include Mixins::GameAvailabilityEnumeration

    SCHEMA_NAME = "GameAvailabilityEnumeration"
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
    DEMO_GAME_AVAILABILITY = EnumerationValue.new("DemoGameAvailability", [SchemaOrg::GameAvailabilityEnumeration])
    FULL_GAME_AVAILABILITY = EnumerationValue.new("FullGameAvailability", [SchemaOrg::GameAvailabilityEnumeration])
    VALUES = [DEMO_GAME_AVAILABILITY, FULL_GAME_AVAILABILITY].freeze

    def self.values
      VALUES
    end
  end
end

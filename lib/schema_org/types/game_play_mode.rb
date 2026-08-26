# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/GamePlayMode
  #
  # Indicates whether this game is multi-player, co-op or single-player.
  class GamePlayMode < Base
    include Mixins::GamePlayMode

    SCHEMA_NAME = "GamePlayMode"
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
    CO_OP = EnumerationValue.new("CoOp", [SchemaOrg::GamePlayMode])
    MULTI_PLAYER = EnumerationValue.new("MultiPlayer", [SchemaOrg::GamePlayMode])
    SINGLE_PLAYER = EnumerationValue.new("SinglePlayer", [SchemaOrg::GamePlayMode])
    VALUES = [CO_OP, MULTI_PLAYER, SINGLE_PLAYER].freeze

    def self.values
      VALUES
    end
  end
end

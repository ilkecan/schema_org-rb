module SchemaOrg
  # https://schema.org/GamePlayMode
  #
  # Indicates whether this game is multi-player, co-op or single-player.
  class GamePlayMode < Base
    include Mixins::GamePlayMode
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
    CO_OP = EnumerationValue.new("CoOp", self, [SchemaOrg::GamePlayMode]).freeze
    MULTI_PLAYER = EnumerationValue.new("MultiPlayer", self, [SchemaOrg::GamePlayMode]).freeze
    SINGLE_PLAYER = EnumerationValue.new("SinglePlayer", self, [SchemaOrg::GamePlayMode]).freeze
    VALUES = [CO_OP, MULTI_PLAYER, SINGLE_PLAYER].freeze

    def self.values
      VALUES
    end
  end
end

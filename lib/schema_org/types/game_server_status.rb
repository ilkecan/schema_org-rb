module SchemaOrg
  # https://schema.org/GameServerStatus
  #
  # Status of a game server.
  class GameServerStatus < Base
    include Mixins::GameServerStatus
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    OFFLINE_PERMANENTLY = EnumerationValue.new("OfflinePermanently", self, [SchemaOrg::GameServerStatus]).freeze
    OFFLINE_TEMPORARILY = EnumerationValue.new("OfflineTemporarily", self, [SchemaOrg::GameServerStatus]).freeze
    ONLINE = EnumerationValue.new("Online", self, [SchemaOrg::GameServerStatus]).freeze
    ONLINE_FULL = EnumerationValue.new("OnlineFull", self, [SchemaOrg::GameServerStatus]).freeze
    VALUES = [OFFLINE_PERMANENTLY, OFFLINE_TEMPORARILY, ONLINE, ONLINE_FULL].freeze

    def self.values
      VALUES
    end
  end
end

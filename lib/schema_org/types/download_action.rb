module SchemaOrg
  # https://schema.org/DownloadAction
  #
  # The act of downloading an object.
  class DownloadAction < Base
    include Mixins::DownloadAction
    SCHEMA_TYPES = [self, SchemaOrg::TransferAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
  end
end

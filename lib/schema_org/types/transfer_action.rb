# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TransferAction
  #
  # The act of transferring/moving (abstract or concrete) animate or inanimate objects from one place to another.
  class TransferAction < Base
    include Mixins::TransferAction

    SCHEMA_NAME = "TransferAction"
    SCHEMA_TYPES = [self, SchemaOrg::Action, SchemaOrg::Thing].freeze

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

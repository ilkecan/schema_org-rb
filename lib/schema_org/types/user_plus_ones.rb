# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/UserPlusOnes
  #
  # NOTE: Superseded by `InteractionCounter`.
  #
  # UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use [[Action]]-based vocabulary, alongside types such as [[Comment]].
  class UserPlusOnes < Base
    include Mixins::UserPlusOnes

    SCHEMA_NAME = "UserPlusOnes"
    SCHEMA_TYPES = [self, SchemaOrg::UserInteraction, SchemaOrg::Event, SchemaOrg::Thing].freeze

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

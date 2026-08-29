# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/InteractionCounter
  #
  # NOTE: Supersedes `UserBlocks`.
  # NOTE: Supersedes `UserCheckins`.
  # NOTE: Supersedes `UserComments`.
  # NOTE: Supersedes `UserDownloads`.
  # NOTE: Supersedes `UserInteraction`.
  # NOTE: Supersedes `UserLikes`.
  # NOTE: Supersedes `UserPageVisits`.
  # NOTE: Supersedes `UserPlays`.
  # NOTE: Supersedes `UserPlusOnes`.
  # NOTE: Supersedes `UserTweets`.
  #
  # A summary of how users have interacted with this CreativeWork. In most cases, authors will use a subtype to specify the specific type of interaction.
  class InteractionCounter < Base
    include Mixins::InteractionCounter

    SCHEMA_NAME = "InteractionCounter"
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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

# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/EndorsementRating
  #
  # An EndorsementRating is a rating that expresses some level of endorsement, for example inclusion in a "critic's pick" blog, a
  # "Like" or "+1" on a social network. It can be considered the [[result]] of an [[EndorseAction]] in which the [[object]] of the action is rated positively by
  # some [[agent]]. As is common elsewhere in schema.org, it is sometimes more useful to describe the results of such an action without explicitly describing the [[Action]].
  #
  # An [[EndorsementRating]] may be part of a numeric scale or organized system, but this is not required: having an explicit type for indicating a positive,
  # endorsement rating is particularly useful in the absence of numeric scales as it helps consumers understand that the rating is broadly positive.
  class EndorsementRating < Base
    include Mixins::EndorsementRating

    SCHEMA_NAME = "EndorsementRating"
    SCHEMA_TYPES = [self, SchemaOrg::Rating, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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

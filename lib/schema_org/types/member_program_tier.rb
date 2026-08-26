# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MemberProgramTier
  #
  # A MemberProgramTier specifies a tier under a loyalty (member) program, for example "gold".
  class MemberProgramTier < Base
    include Mixins::MemberProgramTier

    SCHEMA_NAME = "MemberProgramTier"
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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

# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ComicIssue
  #
  # Individual comic issues are serially published as
  #     	part of a larger series. For the sake of consistency, even one-shot issues
  #     	belong to a series comprised of a single issue. All comic issues can be
  #     	uniquely identified by: the combination of the name and volume number of the
  #     	series to which the issue belongs; the issue number; and the variant
  #     	description of the issue (if any).
  class ComicIssue < Base
    include Mixins::ComicIssue

    SCHEMA_NAME = "ComicIssue"
    SCHEMA_TYPES = [self, SchemaOrg::PublicationIssue, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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

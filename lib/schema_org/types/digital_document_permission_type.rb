# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DigitalDocumentPermissionType
  #
  # A type of permission which can be granted for accessing a digital document.
  class DigitalDocumentPermissionType < Base
    include Mixins::DigitalDocumentPermissionType

    SCHEMA_NAME = "DigitalDocumentPermissionType"
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
    COMMENT_PERMISSION = EnumerationValue.new("CommentPermission", [SchemaOrg::DigitalDocumentPermissionType])
    READ_PERMISSION = EnumerationValue.new("ReadPermission", [SchemaOrg::DigitalDocumentPermissionType])
    WRITE_PERMISSION = EnumerationValue.new("WritePermission", [SchemaOrg::DigitalDocumentPermissionType])
    VALUES = [COMMENT_PERMISSION, READ_PERMISSION, WRITE_PERMISSION].freeze

    def self.values
      VALUES
    end
  end
end

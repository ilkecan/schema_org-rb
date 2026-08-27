# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ReturnMethodEnumeration
  #
  # Enumerates several types of product return methods.
  class ReturnMethodEnumeration < Base
    include Mixins::ReturnMethodEnumeration

    SCHEMA_NAME = "ReturnMethodEnumeration"
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
    KEEP_PRODUCT = EnumerationValue.new("KeepProduct", [SchemaOrg::ReturnMethodEnumeration])
    RETURN_AT_KIOSK = EnumerationValue.new("ReturnAtKiosk", [SchemaOrg::ReturnMethodEnumeration])
    RETURN_BY_MAIL = EnumerationValue.new("ReturnByMail", [SchemaOrg::ReturnMethodEnumeration])
    RETURN_IN_STORE = EnumerationValue.new("ReturnInStore", [SchemaOrg::ReturnMethodEnumeration])
    VALUES = [KEEP_PRODUCT, RETURN_AT_KIOSK, RETURN_BY_MAIL, RETURN_IN_STORE].freeze

    def self.values
      VALUES
    end
  end
end

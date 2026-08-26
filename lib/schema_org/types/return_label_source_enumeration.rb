# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ReturnLabelSourceEnumeration
  #
  # Enumerates several types of return labels for product returns.
  class ReturnLabelSourceEnumeration < Base
    include Mixins::ReturnLabelSourceEnumeration

    SCHEMA_NAME = "ReturnLabelSourceEnumeration"
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
    RETURN_LABEL_CUSTOMER_RESPONSIBILITY = EnumerationValue.new("ReturnLabelCustomerResponsibility", [SchemaOrg::ReturnLabelSourceEnumeration])
    RETURN_LABEL_DOWNLOAD_AND_PRINT = EnumerationValue.new("ReturnLabelDownloadAndPrint", [SchemaOrg::ReturnLabelSourceEnumeration])
    RETURN_LABEL_IN_BOX = EnumerationValue.new("ReturnLabelInBox", [SchemaOrg::ReturnLabelSourceEnumeration])
    VALUES = [RETURN_LABEL_CUSTOMER_RESPONSIBILITY, RETURN_LABEL_DOWNLOAD_AND_PRINT, RETURN_LABEL_IN_BOX].freeze

    def self.values
      VALUES
    end
  end
end

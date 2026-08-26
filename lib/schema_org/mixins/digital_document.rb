module SchemaOrg
  module Mixins
    module DigitalDocument
      include CreativeWork

      def self.schema_property_definitions
        {
          :has_digital_document_permission => {
            schema_name: "hasDigitalDocumentPermission",
            ranges: ["DigitalDocumentPermission"],
          }.freeze,
        }.freeze
      end

      def has_digital_document_permission
        read_property(:has_digital_document_permission)
      end

      def has_digital_document_permission=(value)
        write_property(:has_digital_document_permission, value)
      end

    end
  end
end

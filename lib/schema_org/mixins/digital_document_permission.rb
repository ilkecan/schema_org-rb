module SchemaOrg
  module Mixins
    module DigitalDocumentPermission
      include Intangible

      def self.schema_property_definitions
        {
          :grantee => {
            schema_name: "grantee",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
          :permission_type => {
            schema_name: "permissionType",
            ranges: ["DigitalDocumentPermissionType"],
          }.freeze,
        }.freeze
      end

      def grantee
        read_property(:grantee)
      end

      def grantee=(value)
        write_property(:grantee, value)
      end

      def permission_type
        read_property(:permission_type)
      end

      def permission_type=(value)
        write_property(:permission_type, value)
      end

    end
  end
end

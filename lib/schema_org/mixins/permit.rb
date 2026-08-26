module SchemaOrg
  module Mixins
    module Permit
      include Intangible

      def self.schema_property_definitions
        {
          :issued_by => {
            schema_name: "issuedBy",
            ranges: ["Organization"],
          }.freeze,
          :issued_through => {
            schema_name: "issuedThrough",
            ranges: ["Service"],
          }.freeze,
          :permit_audience => {
            schema_name: "permitAudience",
            ranges: ["Audience"],
          }.freeze,
          :valid_for => {
            schema_name: "validFor",
            ranges: ["Duration"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_in => {
            schema_name: "validIn",
            ranges: ["AdministrativeArea"],
          }.freeze,
          :valid_until => {
            schema_name: "validUntil",
            ranges: ["Date"],
          }.freeze,
        }.freeze
      end

      def issued_by
        read_property(:issued_by)
      end

      def issued_by=(value)
        write_property(:issued_by, value)
      end

      def issued_through
        read_property(:issued_through)
      end

      def issued_through=(value)
        write_property(:issued_through, value)
      end

      def permit_audience
        read_property(:permit_audience)
      end

      def permit_audience=(value)
        write_property(:permit_audience, value)
      end

      def valid_for
        read_property(:valid_for)
      end

      def valid_for=(value)
        write_property(:valid_for, value)
      end

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_in
        read_property(:valid_in)
      end

      def valid_in=(value)
        write_property(:valid_in, value)
      end

      def valid_until
        read_property(:valid_until)
      end

      def valid_until=(value)
        write_property(:valid_until, value)
      end

    end
  end
end

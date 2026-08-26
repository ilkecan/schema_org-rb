module SchemaOrg
  module Mixins
    module MediaSubscription
      include Intangible

      def self.schema_property_definitions
        {
          :authenticator => {
            schema_name: "authenticator",
            ranges: ["Organization"],
          }.freeze,
          :expects_acceptance_of => {
            schema_name: "expectsAcceptanceOf",
            ranges: ["Offer"],
          }.freeze,
        }.freeze
      end

      def authenticator
        read_property(:authenticator)
      end

      def authenticator=(value)
        write_property(:authenticator, value)
      end

      def expects_acceptance_of
        read_property(:expects_acceptance_of)
      end

      def expects_acceptance_of=(value)
        write_property(:expects_acceptance_of, value)
      end

    end
  end
end

# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MediaSubscription
      include Intangible

      def self.schema_property_definitions
        {
          authenticator: {
            schema_name: "authenticator",
            schema_url: "https://schema.org/authenticator",
            comment_lines: ["The Organization responsible for authenticating the user's subscription. For example, many media apps require a cable/satellite provider to authenticate your subscription before playing media."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expects_acceptance_of: {
            schema_name: "expectsAcceptanceOf",
            schema_url: "https://schema.org/expectsAcceptanceOf",
            comment_lines: ["An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The Organization responsible for authenticating the user's subscription. For example, many media apps require a cable/satellite provider to authenticate your subscription before playing media.
      def authenticator
        read_property(:authenticator)
      end

      # The Organization responsible for authenticating the user's subscription. For example, many media apps require a cable/satellite provider to authenticate your subscription before playing media.
      def authenticator=(value)
        write_property(:authenticator, value)
      end

      # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      def expects_acceptance_of
        read_property(:expects_acceptance_of)
      end

      # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      def expects_acceptance_of=(value)
        write_property(:expects_acceptance_of, value)
      end
    end
  end
end

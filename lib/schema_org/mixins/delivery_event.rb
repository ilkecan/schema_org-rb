# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DeliveryEvent
      include Event

      def self.schema_property_definitions
        {
          access_code: {
            schema_name: "accessCode",
            schema_url: "https://schema.org/accessCode",
            comment_lines: ["Password, PIN, or access code needed for delivery (e.g. from a locker)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_from: {
            schema_name: "availableFrom",
            schema_url: "https://schema.org/availableFrom",
            comment_lines: ["When the item is available for pickup from the store, locker, etc."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_through: {
            schema_name: "availableThrough",
            schema_url: "https://schema.org/availableThrough",
            comment_lines: ["After this date, the item will no longer be available for pickup."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_delivery_method: {
            schema_name: "hasDeliveryMethod",
            schema_url: "https://schema.org/hasDeliveryMethod",
            comment_lines: ["Method used for delivery or shipping."].freeze,
            ranges: ["DeliveryMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Password, PIN, or access code needed for delivery (e.g. from a locker).
      def access_code
        read_property(:access_code)
      end

      # Password, PIN, or access code needed for delivery (e.g. from a locker).
      def access_code=(value)
        write_property(:access_code, value)
      end

      # When the item is available for pickup from the store, locker, etc.
      def available_from
        read_property(:available_from)
      end

      # When the item is available for pickup from the store, locker, etc.
      def available_from=(value)
        write_property(:available_from, value)
      end

      # After this date, the item will no longer be available for pickup.
      def available_through
        read_property(:available_through)
      end

      # After this date, the item will no longer be available for pickup.
      def available_through=(value)
        write_property(:available_through, value)
      end

      # Method used for delivery or shipping.
      def has_delivery_method
        read_property(:has_delivery_method)
      end

      # Method used for delivery or shipping.
      def has_delivery_method=(value)
        write_property(:has_delivery_method, value)
      end
    end
  end
end

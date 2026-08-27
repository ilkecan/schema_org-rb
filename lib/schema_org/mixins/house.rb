# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module House
      include Accommodation

      def self.schema_property_definitions
        {
          number_of_rooms: {
            schema_name: "numberOfRooms",
            schema_url: "https://schema.org/numberOfRooms",
            comment_lines: ["The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.", "Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms
        read_property(:number_of_rooms)
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end
    end
  end
end

# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ThreeDModel
      include MediaObject

      def self.schema_property_definitions
        {
          is_resizable: {
            schema_name: "isResizable",
            schema_url: "https://schema.org/isResizable",
            comment_lines: ["Whether the 3DModel allows resizing. For example, room layout applications often do not allow 3DModel elements to be resized to reflect reality."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Whether the 3DModel allows resizing. For example, room layout applications often do not allow 3DModel elements to be resized to reflect reality.
      def is_resizable
        read_property(:is_resizable)
      end

      # Whether the 3DModel allows resizing. For example, room layout applications often do not allow 3DModel elements to be resized to reflect reality.
      def is_resizable=(value)
        write_property(:is_resizable, value)
      end
    end
  end
end

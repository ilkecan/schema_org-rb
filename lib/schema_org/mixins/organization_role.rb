# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module OrganizationRole
      include Role

      def self.schema_property_definitions
        {
          numbered_position: {
            schema_name: "numberedPosition",
            schema_url: "https://schema.org/numberedPosition",
            comment_lines: ["A number associated with a role in an organization, for example, the number on an athlete's jersey."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A number associated with a role in an organization, for example, the number on an athlete's jersey.
      def numbered_position
        read_property(:numbered_position)
      end

      # A number associated with a role in an organization, for example, the number on an athlete's jersey.
      def numbered_position=(value)
        write_property(:numbered_position, value)
      end
    end
  end
end

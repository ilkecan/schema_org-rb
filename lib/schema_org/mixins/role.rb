# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Role
      include Intangible

      def self.schema_property_definitions
        {
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          named_position: {
            schema_name: "namedPosition",
            schema_url: "https://schema.org/namedPosition",
            comment_lines: ["A position played, performed or filled by a person or organization, as part of an organization. For example, an athlete in a SportsTeam might play in the position named 'Quarterback'."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "roleName",
            supersedes: nil
          }.freeze,
          role_name: {
            schema_name: "roleName",
            schema_url: "https://schema.org/roleName",
            comment_lines: ["A role played, performed or filled by a person or organization. For example, the team of creators for a comic book might fill the roles named 'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might play in the position named 'Quarterback'."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["namedPosition"].freeze
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # A position played, performed or filled by a person or organization, as part of an organization. For example, an athlete in a SportsTeam might play in the position named 'Quarterback'.
      # Superseded by `roleName`.
      def named_position
        read_property(:named_position)
      end

      # A position played, performed or filled by a person or organization, as part of an organization. For example, an athlete in a SportsTeam might play in the position named 'Quarterback'.
      # Superseded by `roleName`.
      def named_position=(value)
        write_property(:named_position, value)
      end

      # A role played, performed or filled by a person or organization. For example, the team of creators for a comic book might fill the roles named 'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might play in the position named 'Quarterback'.
      # Supersedes `namedPosition`.
      def role_name
        read_property(:role_name)
      end

      # A role played, performed or filled by a person or organization. For example, the team of creators for a comic book might fill the roles named 'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might play in the position named 'Quarterback'.
      # Supersedes `namedPosition`.
      def role_name=(value)
        write_property(:role_name, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end
    end
  end
end

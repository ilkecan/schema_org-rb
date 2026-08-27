# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SportsTeam
      include SportsOrganization

      def self.schema_property_definitions
        {
          athlete: {
            schema_name: "athlete",
            schema_url: "https://schema.org/athlete",
            comment_lines: ["A person that acts as performing member of a sports team; a player as opposed to a coach."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          coach: {
            schema_name: "coach",
            schema_url: "https://schema.org/coach",
            comment_lines: ["A person that acts in a coaching role for a sports team."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gender: {
            schema_name: "gender",
            schema_url: "https://schema.org/gender",
            comment_lines: ["Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of \"Mixed\"."].freeze,
            ranges: ["GenderType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A person that acts as performing member of a sports team; a player as opposed to a coach.
      def athlete
        read_property(:athlete)
      end

      # A person that acts as performing member of a sports team; a player as opposed to a coach.
      def athlete=(value)
        write_property(:athlete, value)
      end

      # A person that acts in a coaching role for a sports team.
      def coach
        read_property(:coach)
      end

      # A person that acts in a coaching role for a sports team.
      def coach=(value)
        write_property(:coach, value)
      end

      # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
      def gender
        read_property(:gender)
      end

      # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
      def gender=(value)
        write_property(:gender, value)
      end
    end
  end
end

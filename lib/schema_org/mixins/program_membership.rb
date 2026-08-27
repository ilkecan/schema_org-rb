# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ProgramMembership
      include Intangible

      def self.schema_property_definitions
        {
          hosting_organization: {
            schema_name: "hostingOrganization",
            schema_url: "https://schema.org/hostingOrganization",
            comment_lines: ["The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          member: {
            schema_name: "member",
            schema_url: "https://schema.org/member",
            comment_lines: ["A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "memberOf",
            superseded_by: nil,
            supersedes: "musicGroupMember"
          }.freeze,
          members: {
            schema_name: "members",
            schema_url: "https://schema.org/members",
            comment_lines: ["A member of this organization."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "member",
            supersedes: nil
          }.freeze,
          membership_number: {
            schema_name: "membershipNumber",
            schema_url: "https://schema.org/membershipNumber",
            comment_lines: ["A unique identifier for the membership."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          membership_points_earned: {
            schema_name: "membershipPointsEarned",
            schema_url: "https://schema.org/membershipPointsEarned",
            comment_lines: ["The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)"].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          program: {
            schema_name: "program",
            schema_url: "https://schema.org/program",
            comment_lines: ["The [MemberProgram](https://schema.org/MemberProgram) associated with a [ProgramMembership](https://schema.org/ProgramMembership)."].freeze,
            ranges: ["MemberProgram"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          program_name: {
            schema_name: "programName",
            schema_url: "https://schema.org/programName",
            comment_lines: ["The program providing the membership. It is preferable to use [:program](https://schema.org/program) instead."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
      def hosting_organization
        read_property(:hosting_organization)
      end

      # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
      def hosting_organization=(value)
        write_property(:hosting_organization, value)
      end

      # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
      # Supersedes `musicGroupMember`.
      # Inverse-property: `memberOf`.
      def member
        read_property(:member)
      end

      # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
      # Supersedes `musicGroupMember`.
      # Inverse-property: `memberOf`.
      def member=(value)
        write_property(:member, value)
      end

      # A member of this organization.
      # Superseded by `member`.
      def members
        read_property(:members)
      end

      # A member of this organization.
      # Superseded by `member`.
      def members=(value)
        write_property(:members, value)
      end

      # A unique identifier for the membership.
      def membership_number
        read_property(:membership_number)
      end

      # A unique identifier for the membership.
      def membership_number=(value)
        write_property(:membership_number, value)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned
        read_property(:membership_points_earned)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned=(value)
        write_property(:membership_points_earned, value)
      end

      # The [MemberProgram](https://schema.org/MemberProgram) associated with a [ProgramMembership](https://schema.org/ProgramMembership).
      def program
        read_property(:program)
      end

      # The [MemberProgram](https://schema.org/MemberProgram) associated with a [ProgramMembership](https://schema.org/ProgramMembership).
      def program=(value)
        write_property(:program, value)
      end

      # The program providing the membership. It is preferable to use [:program](https://schema.org/program) instead.
      def program_name
        read_property(:program_name)
      end

      # The program providing the membership. It is preferable to use [:program](https://schema.org/program) instead.
      def program_name=(value)
        write_property(:program_name, value)
      end
    end
  end
end

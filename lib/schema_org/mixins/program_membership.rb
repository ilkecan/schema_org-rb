module SchemaOrg
  module Mixins
    module ProgramMembership
      include Intangible

      def self.schema_property_definitions
        {
          :hosting_organization => {
            schema_name: "hostingOrganization",
            ranges: ["Organization"],
          }.freeze,
          :member => {
            schema_name: "member",
            ranges: ["Organization", "Person"],
          }.freeze,
          :members => {
            schema_name: "members",
            ranges: ["Organization", "Person"],
          }.freeze,
          :membership_number => {
            schema_name: "membershipNumber",
            ranges: ["Text"],
          }.freeze,
          :program_name => {
            schema_name: "programName",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def hosting_organization
        read_property(:hosting_organization)
      end

      def hosting_organization=(value)
        write_property(:hosting_organization, value)
      end

      def member
        read_property(:member)
      end

      def member=(value)
        write_property(:member, value)
      end

      def members
        read_property(:members)
      end

      def members=(value)
        write_property(:members, value)
      end

      def membership_number
        read_property(:membership_number)
      end

      def membership_number=(value)
        write_property(:membership_number, value)
      end

      def program_name
        read_property(:program_name)
      end

      def program_name=(value)
        write_property(:program_name, value)
      end

    end
  end
end

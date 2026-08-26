module SchemaOrg
  module Mixins
    module ConsumeAction
      include Action

      def self.schema_property_definitions
        {
          :action_accessibility_requirement => {
            schema_name: "actionAccessibilityRequirement",
            ranges: ["ActionAccessSpecification"],
          }.freeze,
          :expects_acceptance_of => {
            schema_name: "expectsAcceptanceOf",
            ranges: ["Offer"],
          }.freeze,
        }.freeze
      end

      def action_accessibility_requirement
        read_property(:action_accessibility_requirement)
      end

      def action_accessibility_requirement=(value)
        write_property(:action_accessibility_requirement, value)
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

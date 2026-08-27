# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ConsumeAction
      include Action

      def self.schema_property_definitions
        {
          action_accessibility_requirement: {
            schema_name: "actionAccessibilityRequirement",
            schema_url: "https://schema.org/actionAccessibilityRequirement",
            comment_lines: ["A set of requirements that must be fulfilled in order to perform an Action. If more than one value is specified, fulfilling one set of requirements will allow the Action to be performed."].freeze,
            ranges: ["ActionAccessSpecification"].freeze,
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

      # A set of requirements that must be fulfilled in order to perform an Action. If more than one value is specified, fulfilling one set of requirements will allow the Action to be performed.
      def action_accessibility_requirement
        read_property(:action_accessibility_requirement)
      end

      # A set of requirements that must be fulfilled in order to perform an Action. If more than one value is specified, fulfilling one set of requirements will allow the Action to be performed.
      def action_accessibility_requirement=(value)
        write_property(:action_accessibility_requirement, value)
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
